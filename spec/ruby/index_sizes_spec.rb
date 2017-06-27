require 'index_sizes'

RSpec.describe IndexSizes do
  it 'parses test properly' do
    r = IndexSizes.from_file('src/index_sizes.bin')

    expect(r.qty).to eq 3

    expect(r.sizes[0]).to eq 1
    expect(r.sizes[1]).to eq 8
    expect(r.sizes[2]).to eq 4

    expect(r.bufs[0]).to eq "A"
    expect(r.bufs[1]).to eq "BBBBBBBB"
    expect(r.bufs[2]).to eq "CCCC"
  end
end
