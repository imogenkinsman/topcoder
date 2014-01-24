# SRM 596 Round 1 - Div II, Level 2

def colorful_road(road)
  road_colors = road.chars
  least_cost = []

  road_colors.each_with_index do |color, index|
    current_cost = 9999999
    0.upto(index - 1) do |prior_index|
      if color == 'R' && road_colors[prior_index] == 'B'
        current_cost = [current_cost, least_cost[prior_index] + ((index - prior_index)**2)].min
      elsif color == 'G' && road_colors[prior_index] == 'R'
        current_cost = [current_cost, least_cost[prior_index] + ((index - prior_index)**2)].min
      elsif color == 'B' && road_colors[prior_index] == 'G'
        current_cost = [current_cost, least_cost[prior_index] + ((index - prior_index)**2)].min
      end
    end

    if index == 0
      current_cost = 0
    end

    if index == road.size - 1 && current_cost == 9999999
      current_cost = -1
    end

    least_cost[index] = current_cost
  end

  return least_cost.last
end