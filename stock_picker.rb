# Implement a method #stock_picker that takes an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

class Stock
  attr_accessor :stocks

  def initialize(stocks)
    @stocks = stocks
  end

  def stock_picker
    highest_profit = 0
    best_day = []

    stocks.each_with_index do |x, index|
      unless index == 0
        count = index
        until stocks[count] == stocks.first
          current_profit = x - stocks[count - 1]
          if current_profit > highest_profit
            highest_profit = current_profit
            best_day = [count - 1, index]
          end
          count -= 1
        end
      end
    end
    p best_day
  end
end

#s = Stocker.new([1,2,3,4,5,20])
s = Stock.new([17,3,6,9,15,8,6,1,10])
#s = Stocker.new([7,1,2,20,3,4])
s.stock_picker
