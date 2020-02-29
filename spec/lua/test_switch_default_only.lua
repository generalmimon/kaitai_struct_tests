-- Autogenerated from KST: please remove this line if doing any edits by hand!

local luaunit = require("luaunit")

require("switch_default_only")

TestSwitchDefaultOnly = {}

function TestSwitchDefaultOnly:test_switch_default_only()
    local r = SwitchDefaultOnly:from_file("src/switch_opcodes.bin")

    luaunit.assertEquals(r.opcode, 83)
    luaunit.assertEquals(r.byte, 102)
    luaunit.assertEquals(r.struct.value, "\111\111\098\097")
    luaunit.assertEquals(r.struct_sized.value, "\114\000\073\066")
end