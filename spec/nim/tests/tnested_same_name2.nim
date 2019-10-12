# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/nested_same_name2

var
  stream = newFileStream("test_out/nim/junitreports/nested_same_name2.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: NestedSameName2":
    let r = NestedSameName2.fromFile("src/nested_same_name2.bin")

    check(r.version == 66)
    check(r.mainData.mainSize == 2)
    check(r.mainData.foo.data1 == @[17, 17, 17, 17])
    check(r.dummy.dummySize == 3)
    check(r.dummy.foo.data2 == @[34, 34, 34, 34, 34, 34])

close(outputFormatter)