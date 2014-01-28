# 2003 TCO Semifinal Round 4 - Division I, Level One
#
# a good refresher on path counting: https://www.khanacademy.org/math/recreational-math/brain-teasers/v/path-counting-brain-teaser
# without obstructions, this is just recreating pascal's triangle via dynamic programming

def is_obstructed?(x1, y1, x2, y2, bad)
  bad.include?("#{x1} #{y1} #{x2} #{y2}") || bad.include?("#{x2} #{y2} #{x1} #{y1}")
end

# this might be cleaner with recursion
def avoid_roads(width, height, bad)

  routes = Array.new(height + 1) { Array.new(width + 1) { 0 } } # how many routes to a block?

  routes.each_with_index do |row, i|
    row.each_index do |j|
      if (i == 0 && j == 0)
        routes[0][0] = 1
      elsif i == 0
        routes[i][j] = routes[0][j - 1] unless is_obstructed?(i, j, i, j - 1, bad)
      elsif j == 0
        routes[i][j] = routes[i - 1][0] unless is_obstructed?(i, j, i - 1, j, bad)
      else
        top = (is_obstructed?(i, j, i - 1, j, bad) ? 0 : routes[i - 1][j])
        left = (is_obstructed?(i, j, i, j - 1, bad) ? 0 : routes[i][j - 1])
        routes[i][j] = top + left
      end
    end
  end

  return routes[height][width]
end