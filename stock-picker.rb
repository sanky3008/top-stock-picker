def stock_picker(array)
  length = array.length

  max_profit = nil
  buy_day = nil
  sell_day = nil

  array.each_with_index() do |price, index|
    for i in index..(length-1)
      # puts "buy_price: #{price}, sell_price: #{array[i]}, diff: #{array[i] - price}"
      if !max_profit || ((array[i] - price) > max_profit)
        buy_day = index
        sell_day = i
        max_profit = array[i] - price
      end
      # puts "buy_day: #{buy_day}, sell_day: #{sell_day}, max_profit: #{max_profit}"
      # puts "\n"
    end
  end

  return [buy_day, sell_day]
end

p stock_picker([17,7,6,5,4,3,2,1,0])
