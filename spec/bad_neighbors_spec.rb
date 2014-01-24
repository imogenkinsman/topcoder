require_relative '../lib/bad_neighbors'

describe "bad neighbors" do

  it "finds the maximum donation" do
    expect(bad_neighbors [10, 3, 2, 5, 7, 8]).to eq 19
    expect(bad_neighbors [11, 15]).to eq 15
    expect(bad_neighbors [7, 7, 7, 7, 7, 7, 7]).to eq 21
    expect(bad_neighbors [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]).to eq 16
    expect(bad_neighbors [94, 40, 49, 65, 21, 21, 106, 80, 92, 81, 679, 4, 61,
                          6, 237, 12, 72, 74, 29, 95, 265, 35, 47, 1, 61, 397,
                          52, 72, 37, 51, 1, 81, 45, 435, 7, 36, 57, 86, 81, 72]).to eq 2926
  end
end