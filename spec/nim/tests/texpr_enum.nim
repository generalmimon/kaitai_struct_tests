# Autogenerated from KST: please remove this line if doing any edits by hand!

import os, streams, options, sequtils, unittest
import ../../../compiled/nim/expr_enum
import ../test_utils

let r = ExprEnum.fromFile("src/term_strz.bin")

test "ExprEnum":

  check(r.constDog == ExprEnum_Animal(dog))
  check(r.derivedBoom == ExprEnum_Animal(boom))
  check(r.derivedDog == ExprEnum_Animal(dog))
  discard
