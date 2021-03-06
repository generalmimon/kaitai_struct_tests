# Autogenerated from KST: please remove this line if doing any edits by hand!

import os, streams, options, sequtils, unittest
import ../../../compiled/nim/nav_parent_switch
import ../test_utils

let r = NavParentSwitch.fromFile("src/nav_parent_switch.bin")

test "NavParentSwitch":

  check(r.category == uint8(1))
  check((NavParentSwitch_Element1(r.content)).foo == uint8(66))
  check((NavParentSwitch_Element1(r.content)).subelement.bar == uint8(255))
  discard
