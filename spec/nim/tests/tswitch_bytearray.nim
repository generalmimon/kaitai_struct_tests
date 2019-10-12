# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/switch_bytearray

var
  stream = newFileStream("test_out/nim/junitreports/switch_bytearray.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: SwitchBytearray":
    let r = SwitchBytearray.fromFile("src/switch_opcodes.bin")

    check(len(r.opcodes) == 4)
    check(r.opcodes[0].code == @[83])
    check(r.opcodes[0].body.value == "foobar")
    check(r.opcodes[1].code == @[73])
    check(r.opcodes[1].body.value == 66)
    check(r.opcodes[2].code == @[73])
    check(r.opcodes[2].body.value == 55)
    check(r.opcodes[3].code == @[83])
    check(r.opcodes[3].body.value == "")

close(outputFormatter)