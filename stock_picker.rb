def stock_picker(array)
	profits = []
	days = []
	array.size.times do
		buy = array.min
		buy_index = array.index(buy)
		sell = array[buy_index..-1].max
		sell_index = array.index(sell)
		answer = sell - buy
		profits << answer
		days << [buy_index, sell_index]
		array.delete_at(buy_index)
	end
	max_profit = profits.max
	max_profit_index = profits.index(max_profit)
	best_days = days[max_profit_index]
end