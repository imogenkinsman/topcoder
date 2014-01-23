require_relative '../lib/zigzag'

describe 'zig zag' do

  it 'returns the correct length' do
    expect(zigzag [1, 7, 4, 9, 2, 5]).to eq 6
    expect(zigzag [1, 17, 5, 10, 13, 15, 10, 5, 16, 8]).to eq 7
    expect(zigzag [44]).to eq 1
    expect(zigzag [70, 55, 13, 2, 99, 2, 80, 80, 80, 80, 100, 19, 7, 5, 5, 5, 1000, 32, 32]).to eq 8
    expect(zigzag [374, 40, 854, 203, 203, 156, 362, 279, 812, 955,
                  600, 947, 978, 46, 100, 953, 670, 862, 568, 188,
                  67, 669, 810, 704, 52, 861, 49, 640, 370, 908,
                  477, 245, 413, 109, 659, 401, 483, 308, 609, 120,
                  249, 22, 176, 279, 23, 22, 617, 462, 459, 244]).to eq 36
  end

end