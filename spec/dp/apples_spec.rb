require_relative '../../lib/dp/apples'

describe 'apples' do

  it 'finds the maximum number of apples' do
    expect(apples([[6,4,5,1,3],[7,3,4,2,3],[2,6,4,1,3],[8,4,7,2,6]])).to eq 42
  end

end