require 'eos_exception_bytes'

RSpec.describe EosExceptionBytes do
  it 'parses test properly' do
    expect {
      r = EosExceptionBytes.from_file('src/term_strz.bin')
    }.to raise_error(EOFError)
  end
end
