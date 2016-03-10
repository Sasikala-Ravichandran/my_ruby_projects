def bubble_sort(arr)
  (1...arr.length).each do |j|
    (0...arr.length-j).each do |i|
      arr[i],arr[i+1] = arr[i+1],arr[i] if arr[i] > arr[i+1]
    end
  end
  arr
end

def bubble_sort_by(arr)
  return unless block_given?
  (1...arr.length).each do |i|
    (0...arr.length-i).each do |j|
      if yield(arr[j],arr[j+1]) < 0
        arr[j],arr[j+1] = arr[j+1],arr[j]
      end
    end
  end
  arr
end

puts bubble_sort([5,4,3,2,1])
puts bubble_sort_by(["ad","etert","dqsf","cw"]) { |l,r| r.length - l.length }
puts bubble_sort_by(["ad","etert","dqsf","cw"]) { |l,r| l.length - r.length }