class Article
   attr_accessor :name, :age
   @users = []  # Class instance variables

   class << self  #Class Methods
    
    def create(h)
     obj = new(h) #Object creation
     @users << obj
     obj
    end
    
    def all
      puts "#{@users}"
    end
   
    def find(name)
     @users.map do |user|
       if user.name == name
         return user
       end
     end
    end 
  end

  def initialize(p)
   p.each do |k,v|
     send("#{k}=", v) # Assigning the hash variables to object 
   end
  end
  
  def display
    "#{@name} #{@age}"
  end

  def to_s
    "#{name}"
  end
 
end

h = {}
ans = "y"
while ans == "y"

   puts "enter the name"
   h[:name] = gets.chomp()
   puts "enter the age"
   h[:age] = gets.chomp()
   a =Article.create(h)
   puts "answer y/n"
   ans = gets.chomp()
end
 
Article.all
puts "Find"
puts "#{Article.find("a")} is the object"
puts "#{Article.instance_eval("@users")}"
