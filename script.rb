# frozen_string_literal: true

def stock_picker(stock_prices)
  profit = 0
  optimal_buy = [0, 0]
  stock_prices.each_with_index do |price_j, price_j_index|
    stock_prices.each_with_index do |price_i, price_i_index|
      next unless price_j - price_i > profit && price_j_index != 0 && price_j_index > price_i_index

      profit = price_j - price_i
      optimal_buy = [price_i_index, price_j_index]
    end
  end
  # p profit
  # p optimal_buy
  optimal_buy[1].zero? ? 'No profit in buying any of those stocks' : optimal_buy
end
p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
