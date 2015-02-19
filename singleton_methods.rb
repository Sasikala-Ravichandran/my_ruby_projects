#http://reference.jumpingmonkey.org/programming_languages/ruby/ruby-metaprogramming.html

  class A
    @class_instance_var = "a class instance variable"
    @@class_var = "a class variable"
  
    def self.instance_var
      @class_instance_var  # not accessible by subclass
    end
  
    def self.class_var 
      @@class_var   # accessible by subclasses
    end 
  
    def foo
    	#class_var
      'an instance method'
    end
  end

  puts A.instance_var   
  puts "s"
  puts A.singleton_class.instance_methods(false)   
  puts "a"
  puts A.singleton_methods(false) # A.singleton_class.instance_methods == A.singleton_methods            
  puts  A.instance_methods (false)           
   
  a = A.new
  puts a.foo 
  puts "#{A.instance_methods(false)}"        
  puts "#{a.singleton_class.instance_methods(false)}"   
  puts  "#{a.singleton_methods}"                      

   
  def a.bar; 'bar'; end
  
  puts a.singleton_methods                     
