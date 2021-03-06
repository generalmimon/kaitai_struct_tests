# Autogenerated from KST: please remove this line if doing any edits by hand!

import os, streams, options, sequtils, unittest
import ../../../compiled/nim/enum_to_i
import ../test_utils

let r = EnumToI.fromFile("src/enum_0.bin")

test "EnumToI":

  check(r.pet1 == enum_to_i.cat)
  check(r.pet2 == enum_to_i.chicken)
  check(r.pet1I == int(7))
  check(r.pet1Mod == int(32775))
  check(r.oneLtTwo == bool(true))
  discard
