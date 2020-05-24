def last_stone_weight(stones)
  while stones.length > 1
    stones.sort!
    diff = stones.pop - stones.pop
    stones << diff
  end

  stones[0]
end
