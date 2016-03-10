load 'enumerable_methods.rb'
arr = [1,2,3,4,10]

puts "each"
arr.my_each {|n| puts n }

puts "each_with_index"
arr.my_each_with_index do |n,i|
  puts "#{n} #{i}"
end

puts "select"
puts "#{arr.my_select { |n| n>2 } } "

puts "all"
puts "#{arr.my_all? { |n| n < 15 } } "

puts "any"
puts "#{arr.my_any? { |n| n < 15 } } "

puts "none"
puts "#{arr.my_none? { |n| n < 15 } } "

puts "count"
puts "#{arr.my_count{ |n| n<3 }} "

puts "map"
puts "#{arr.map {|n| n*2 }}"

def multiply_els(a)
  a.inject(1) { |p,n| p*n }
end

puts "multiply_els"
puts multiply_els([2,4,5])

puts "Proc map"
p = Proc.new { |n| n*3 }
puts arr.my_map(&p)