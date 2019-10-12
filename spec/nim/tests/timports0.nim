# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/imports0

var
  stream = newFileStream("test_out/nim/junitreports/imports0.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: Imports0":
    let r = Imports0.fromFile("src/fixed_struct.bin")

    check(r.two == 80)
    check(r.hw.one == 65)
    check(r.hwOne == 65)

close(outputFormatter)