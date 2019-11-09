# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, sequtils, ../testhelpers
import ../../../compiled/nim/expr_calc_array_ops

var
  stream = newFileStream("test_out/nim/junitreports/expr_calc_array_ops.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: ExprCalcArrayOps":
    let r = ExprCalcArrayOps.fromFile("src/fixed_struct.bin")

    check(r.intArraySize == int(7))
    check(r.intArrayFirst == int(10))
    check(r.intArrayMid == int(25))
    check(r.intArrayLast == int(1000))
    check(r.intArrayMin == int(10))
    check(r.intArrayMax == int(1000))
    check(r.doubleArraySize == int(5))
    check(r.doubleArrayFirst == float64(10.0))
    check(r.doubleArrayMin == float64(25.0))
    check(r.doubleArrayLast == float64(3.14159))
    check(r.doubleArrayMin == float64(3.14159))
    check(r.doubleArrayMax == float64(100.0))
    check(r.strArraySize == int(4))
    check(r.strArrayFirst == string("un"))
    check(r.strArrayMid == string("deux"))
    check(r.strArrayLast == string("quatre"))
    check(r.strArrayMin == string("deux"))
    check(r.strArrayMax == string("quatre"))

close(outputFormatter)