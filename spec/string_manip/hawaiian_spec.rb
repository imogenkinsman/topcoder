require_relative '../../lib/string_manip/hawaiian'

describe 'hawaiian' do

  it 'returns hawaiian words' do
    expect(hawaiian("Hawaii is an island")).to eq ["Hawaii", "an"]
    expect(hawaiian("Mauna Kea and Mauna Koa are two mountains")).to eq ["Mauna", "Kea", "Mauna", "Koa"]
    expect(hawaiian("Pineapple grows in Hawaii")).to eq ['Pineapple', 'in', 'Hawaii']
  end

end