# Autogenerated from KST: please remove this line if doing any edits by hand!

import os, streams, options, sequtils, unittest
import ../../../compiled/nim/index_sizes
import ../test_utils

let r = IndexSizes.fromFile("src/index_sizes.bin")

test "IndexSizes":

  check(r.qty == uint32(3))
  check(r.sizes[0] == uint32(1))
  check(r.sizes[1] == uint32(8))
  check(r.sizes[2] == uint32(4))
  check(r.bufs[0] == string("A"))
  check(r.bufs[1] == string("BBBBBBBB"))
  check(r.bufs[2] == string("CCCC"))
  discard
