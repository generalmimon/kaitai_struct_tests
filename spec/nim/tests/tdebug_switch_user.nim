# Autogenerated from KST: please remove this line if doing any edits by hand!

import os, streams, options, sequtils, unittest
import ../../../compiled/nim/debug_switch_user
import ../test_utils

let r = DebugSwitchUser.fromFile("src/nav_parent_switch.bin")

test "DebugSwitchUser":

  check(r.code == uint8(1))
  check(r.data.val == int16(-190))