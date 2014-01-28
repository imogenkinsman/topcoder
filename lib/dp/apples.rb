# taken from the DP tutorial http://community.topcoder.com/tc?module=Static&d1=tutorials&d2=dynProg

def apples(table)

  optimal = Array.new(table.length, Array.new(table[0].length, 0))

  table.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      if i == 0 && j == 0
        optimal[i][j] = cell
      elsif i == 0
        optimal[i][j] = optimal[i][j - 1] + cell
      elsif j == 0
        optimal[i][j] = optimal[i - 1][j] + cell
      else
        optimal[i][j] = [optimal[i][j-1], optimal[i - 1][j]].max + cell
      end
    end
  end

  return optimal.flatten.max
end