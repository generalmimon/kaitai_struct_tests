# Autogenerated from KST: please remove this line if doing any edits by hand!

import os, streams, options, sequtils, unittest
import ../../../compiled/nim/js_signed_right_shift
import ../test_utils

let r = JsSignedRightShift.fromFile("src/fixed_struct.bin")

test "JsSignedRightShift":

  check(r.shouldBe40000000 == int(1073741824))
  check(r.shouldBeA00000 == int(10485760))
  discard
