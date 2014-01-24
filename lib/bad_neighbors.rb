# 2004 TCCCC Online Round 4 - Division I, level one

def bad_neighbors(donations)
  max_donation = [donations.first]

  1.upto(donations.size - 1) do |resident|
    max_donation[resident] = donations[resident]

    0.upto(resident - 2) do |neighbor|
      max_donation[resident] = [max_donation[neighbor] + donations[resident], max_donation[resident]].max
    end

    if resident == donations.size - 1
      max_donation[resident] = [max_donation[resident] - max_donation[0], donations.last].max
    end
  end

  return max_donation.max
end