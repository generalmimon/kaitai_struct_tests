# Autogenerated from KST: please remove this line if doing any edits by hand!

require 'switch_default_only'

RSpec.describe SwitchDefaultOnly do
  it 'parses test properly' do
    r = SwitchDefaultOnly.from_file('src/switch_opcodes.bin')

    expect(r.opcode).to eq 83
    expect(r.byte).to eq 102
    expect(r.struct.value).to eq [111, 111, 98, 97].pack('C*')
    expect(r.struct_sized.value).to eq [114, 0, 73, 66].pack('C*')
  end
end