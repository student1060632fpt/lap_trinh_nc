is_square n = sq * sq == n
  where sq = floor $ sqrt $ (fromIntegral n::Double)
-- is_square 25