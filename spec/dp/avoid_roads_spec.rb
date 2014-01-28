require_relative '../../lib/dp/avoid_roads'

describe 'avoid roads' do

  it 'finds the number of distinct paths to the destination' do
    expect(avoid_roads(6, 6, ["0 0 0 1", "6 6 5 6"])).to eq 252
    expect(avoid_roads(1, 1, [])).to eq 2
    expect(avoid_roads(35, 31, [])).to eq 6406484391866534976
    expect(avoid_roads(2, 2, ["0 0 1 0", "1 2 2 2", "1 1 2 1"])).to eq 0
  end

end