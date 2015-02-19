 
class A
     attr_accessor :a, :l
	 class << self
     attr_accessor :a, :ll
   end
    
  def initialize
    @a = 11
    @@a = 22
    a = 33
    @l = lambda { puts "#{a}" } 
  end

   @a = 1
   @@a = 2
   a = 3
   @ll = lambda {puts "#{a}"}

end

puts "#{A.a}"
puts "#{A.class_eval('@@a')}"
puts "#{A.ll.call}"
obj = A.new
puts "#{obj.a}"
#puts obj.instance_variable_get("@a")
puts "#{A.class_variable_get("@@a")}"
puts "#{obj.l.call}"
