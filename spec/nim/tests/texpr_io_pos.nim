# Autogenerated from KST: please remove this line if doing any edits by hand!

import os, streams, options, sequtils, unittest
import ../../../compiled/nim/expr_io_pos
import ../test_utils

let r = ExprIoPos.fromFile("src/expr_io_pos.bin")

test "ExprIoPos":

  check(r.substream1.myStr == string("CURIOSITY"))
  check(r.substream1.body == string(@[17'i8, 34, 51, 68].toString))
  check(r.substream1.number == uint16(66))
  check(r.substream2.myStr == string("KILLED"))
  check(r.substream2.body == string(@[97'i8, 32, 99, 97, 116].toString))
  check(r.substream2.number == uint16(103))
  discard
