# Autogenerated from KST: please remove this line if doing any edits by hand!

import os, streams, options, sequtils, unittest
import ../../../compiled/nim/bits_enum
import ../test_utils

let r = BitsEnum.fromFile("src/fixed_struct.bin")

test "BitsEnum":

  check(r.one == BitsEnum_Animal(platypus))
  check(r.two == BitsEnum_Animal(horse))
  check(r.three == BitsEnum_Animal(cat))
  discard
