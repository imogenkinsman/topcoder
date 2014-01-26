def flower_garden(height, bloom, wilt)

  done = Array.new(height.size, false)
  ordered_results = []

  while ordered_results.size != height.size
    best = -1

    0.upto(height.size - 1) do |i|
      next if done[i]
      ok = true
      0.upto(height.size - 1) do |j|
        if (i != j && !done[j] && (height[i] > height[j] && bloom[i] <= wilt[j] && wilt[i] >= bloom[j]))
          ok = false
          break
        end
      end
      if ok && (best == -1 || height[i] > height[best])
        best = i
      end
    end

    ordered_results << height[best]
    done[best] = true
  end

  ordered_results
end