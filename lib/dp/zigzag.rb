#TopCoder Collegiate Challenge Semifinal Round 3 - Divison 1, Level One

def zigzag(sequence)

  length = []
  change = [] # was last change in sequence positive? :negative, :positive

  sequence.each_with_index do |number, index|
    length[index] = max_length = 1
    0.upto(index - 1) do |prior_index|
      prior_number = sequence[prior_index]
      prior_length = length[prior_index]

      if prior_length >= max_length
        if prior_number < number && change[prior_index] != :positive
          change[index] = :positive
          max_length = prior_length + 1
        elsif prior_number > number && change[prior_index] != :negative
          change[index] = :negative
          max_length = prior_length + 1
        end
      end
    end
    length[index] = max_length
  end
  return length.max
end