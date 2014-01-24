require_relative '../lib/colorful_road'

describe 'colorful road' do

  it 'returns the optimal solution' do
    expect(colorful_road "RGGGB").to eq 8
    expect(colorful_road "RGBRGBRGB").to eq 8
    expect(colorful_road "RBBGGGRR").to eq -1
    expect(colorful_road "RBRRBGGGBBBBR").to eq 50
    expect(colorful_road "RG").to eq 1
    expect(colorful_road "RBRGBGBGGBGRGGG").to eq 52
  end

end