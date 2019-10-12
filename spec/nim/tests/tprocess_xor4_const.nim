# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/process_xor4_const

var
  stream = newFileStream("test_out/nim/junitreports/process_xor4_const.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: ProcessXor4Const":
    let r = ProcessXor4Const.fromFile("src/process_xor_4.bin")

    check(r.key == @[-20, -69, -93, 20])
    check(r.buf == @[102, 111, 111, 32, 98, 97, 114])

close(outputFormatter)