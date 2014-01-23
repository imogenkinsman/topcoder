require_relative '../lib/zigzag'

describe 'zig zag' do

  it 'returns the correct length' do
    expect(zigzag[1, 7, 4, 9, 2, 5]).to eq 6
    expect(zigzag[1, 17, 5, 10, 13, 15, 10, 5, 16, 8]).to eq 7
    expect(zigzag[44]).to eq 1
    expect(zigzag[70, 55, 13, 2, 99, 2, 80, 80, 80, 80, 100, 19, 7, 5, 5, 5, 1000, 32, 32]).to eq 8
  end



end