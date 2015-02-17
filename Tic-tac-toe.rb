  class TicTacToe

   WIN_POS=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
 
   def initialize
   	@x =[]
   	@o =[]
   	@a = [" "," "," "," "," "," "," "," "," "]
   end
 	    
 	def play
 	     
 		while true
 		board(@a)
 		play_the_game
 		if play_again? == "yes"
 			initialize
 		else
 			puts "Bye Bye! Nice playing with you."
 			break
 		end

    	end
    end

 private 

def board(a)

board = <<BOARD

      ===================================
     |          1|          2|          3|
     |     #{a[0]}     |     #{a[1]}     |     #{a[2]}     |
     |           |           |           |
      ===================================
     |          4|          5|          6|
     |     #{a[3]}     |     #{a[4]}     |     #{a[5]}     |
     |           |           |           |
      ===================================
     |          7|          8|          9|
     |     #{a[6]}     |     #{a[7]}     |     #{a[8]}     |
     |           |           |           |
      ===================================

BOARD
puts board
end

def get_valid_move(arr)
  loop do
  a = gets.chomp().to_i
  puts "#{@x.include?(a)}"
  puts "#{@o.include?(a)}"
  unless (@x.include?(a) || @o.include?(a))
    arr<<a 
    yield(a)
    break
  else
    puts "Position is already used.Please re-enter the value"
    redo
  end
end
end
 
def play_the_game
 	loop do
 		     	    
 			 #Input of X
 			   puts "See the board and enter the position for X"
 			   get_valid_move(@x) { |x| @a[x-1] = "X" }
         puts "x is #{@x}"
         board(@a)
            
        	#processing for X
         	x_result = process(@x)

        	#Output of X
         	if x_result == "WINS"
         		puts "X WINS"
         		break
         	end

         	 
          if (@x.length + @o.length == 9)
           	puts "GAME OVER without anybody winning!!!!"
           	break
          end

         	#Input of O
 			    puts "See the board and enter the position for O"
 			    get_valid_move(@o)  { |x| @a[x-1] = "O" }      	 
          puts "o is #{@o}"
        	board(@a)

         	#processing for O
         	o_result = process(@o)

         	#Output of O
        	if o_result == "WINS"
            	puts "O WINS"
         		break
        	end
    	 
 	end
end

def play_again?
	puts "Do you like a plag again?(yes or no)"
	gets.chomp()
	 
end

def process(p)
	 
  WIN_POS.each do |win|
    if (win-p).empty?
		return "WINS"
	end
  end
			
end

end

t = TicTacToe.new
puts "Welcome to play"
puts t.to_s
t.play

