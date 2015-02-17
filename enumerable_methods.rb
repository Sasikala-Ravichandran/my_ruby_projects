module Enumerable 
	def my_each 
		for i in self
			yield(i)
			 
		end
		self
	end

    def my_each_with_index
    	i = 0
    	len = self.length
    	while i < self.length
    		yield(self[i],i)
    		i += 1
    	end
    end

    def my_select
    	a=[]
    	for i in self
    		 
    		a << i if yield(i)
    	end
    	a
    end

   def my_all?
   
 	  	self.my_each do |i|
   		  return false unless yield(i)
    	end
         true
    end
	def my_any?
        self.my_each do |i|
    	 return true if yield(i)
    	 end
    	 false
    end

    def my_none?
    	self.my_each do |i|
    		return false if yield(i)
    	end
    	true
    end
  
   
   def my_count(n=0)
   	    c=0
     	if block_given?
    		self.my_each { |i| c += 1 if yield(i) } 
    	elsif(n)
    		self.my_each { c += 1 if (i == n) }
    	else
    		self.my_each { c += 1 }
    	end
       c
   end

   def my_map(proc=nil)
   	a=[]
   	if proc && block_given?
   	    self.my_each { |i| a << proc.call(yield(i)) }
   	elsif proc && !block_given?
   		self.my_each { |i| a << proc.call(i) }
   	else
   		self.my_each { |i| a << yield(i) }
   	end
   		
   	a
   end

   def my_inject(c)
    self.my_each do |i|
    	c = yield(c,i)
    	puts "c #{c}"
    end
    c
   end

end
