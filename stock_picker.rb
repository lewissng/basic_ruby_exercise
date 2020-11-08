def stock_picker(stock_prices)
  best_margin = 0

  #require "pry"; binding.pry

  for day in 0..stock_prices.length - 1
    lowest_price = stock_prices[day]
    highest_price = stock_prices[day..-1].max
    margin = highest_price - lowest_price

    if best_margin < margin
      best_margin = margin
      best = [lowest_price, highest_price]
    end
  end

  lowest_day = stock_prices.index(best[0])
  highest_day = stock_prices.index(best[1])
  [lowest_day, highest_day]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
