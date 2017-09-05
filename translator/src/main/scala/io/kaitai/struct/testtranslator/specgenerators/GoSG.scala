package io.kaitai.struct.testtranslator.specgenerators

import io.kaitai.struct.datatype.DataType
import io.kaitai.struct.exprlang.Ast
import io.kaitai.struct.languages.GoCompiler
import io.kaitai.struct.testtranslator.{TestAssert, TestSpec}
import io.kaitai.struct.translators.GoTranslator
import io.kaitai.struct.{ClassTypeProvider, RuntimeConfig}

class GoSG(spec: TestSpec, provider: ClassTypeProvider) extends BaseGenerator(spec) {
  val compiler = new GoCompiler(provider, RuntimeConfig())
  val className = GoCompiler.types2class(List(spec.id))
  val translator = new GoTranslator(out, provider, importList)

  override def fileName(name: String): String = s"test_$name.cpp"

  importList.add("\"os\"")
  importList.add("\"testing\"")
  importList.add("\"github.com/stretchr/testify/assert\"")
  importList.add("\"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai\"")
  importList.add(". \"test_formats\"")

  override def header() = {
    out.puts(s"func Test$className(t *testing.T) {")
    out.inc
    out.puts("f, err := os.Open(\"../../src/" + spec.data + "\")")
    fatalCheck()
    out.puts("s := kaitai.NewStream(f)")
    out.puts(s"var this $className")
    out.puts("err = this.Read(s, &r, &r)")
    fatalCheck()
    out.puts
  }

  override def footer() = {
    out.dec
    out.puts("}")
  }

  def simpleAssert(check: TestAssert): Unit = {
    val actStr = translator.translate(check.actual)
    val expStr = translator.translate(check.expected)
    out.puts(s"assert.Equal(t, $expStr, $actStr);")
  }

  def nullAssert(actual: Ast.expr): Unit = {
    val nullCheckStr = actual match {
      case Ast.expr.Attribute(x, Ast.identifier(attrName)) =>
        "r->" + translator.translate(x) + s"->_is_null_$attrName()"
    }
    out.puts(s"BOOST_CHECK($nullCheckStr);")
  }

  def trueArrayAssert(check: TestAssert, elType: DataType, elts: Seq[Ast.expr]): Unit =
    simpleAssert(check)

  override def indentStr: String = "\t"

  override def results: String = {
    "package spec\n\nimport (" +
      importList.toList.map((x) => "\t" + x).mkString("\n") +
      "\n)\n\n" +
      out.result
  }

  def fatalCheck() = {
    out.puts("if err != nil {")
    out.inc
    out.puts("t.Fatal(err)")
    out.dec
    out.puts("}")
  }
}