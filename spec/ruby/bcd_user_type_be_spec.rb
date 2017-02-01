require 'bcd_user_type_be'

RSpec.describe BcdUserTypeBe do
  it 'parses test properly' do
    r = BcdUserTypeBe.from_file('src/bcd_user_type_be.bin')

    expect(r.ltr.as_int).to eq 12345678
    expect(r.ltr.as_str).to eq "12345678"
    expect(r.rtl.as_int).to eq 87654321
    expect(r.rtl.as_str).to eq "87654321"
    expect(r.leading_zero_ltr.as_int).to eq 123456
    expect(r.leading_zero_ltr.as_str).to eq "00123456"
  end
end