# frozen_string_literal: true

# Implement a method #stock_picker that takes an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

class Stock
  def stock_picker(stocks)
    highest_profit = 0
    best_day = []

    stocks.each_with_index do |current_price, current_day|
      next if current_day == 0

      count = current_day
      until count == 0
        current_profit = current_price - stocks[count - 1]

        if current_profit > highest_profit
          highest_profit = current_profit
          best_day = [count - 1, current_day]
        end

        count -= 1
      end
    end

    best_day
  end
end

# s = Stocker.new([1,2,3,4,5,20])
s = Stock.new
# s = Stocker.new([7,1,2,20,3,4])
p s.stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
