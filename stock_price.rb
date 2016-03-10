def stock(arr)
  max_profit = 0
  best_days = []
  arr[0..-2].each do |buy|
    arr[arr.index(buy)..-1].each do |sell|
      if max_profit < (sell-buy)
        max_profit =(sell-buy)
        best_days[0] = arr.index(buy)
        best_days[1] = arr.index(sell)
      end
    end
  end
  best_days
end

p stock([1,3,6,9,15,8,6,1,17]) 