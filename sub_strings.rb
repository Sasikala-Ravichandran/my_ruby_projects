 def substrings(word,arr)
 	result={}
 	word_array = word.downcase.split
 	puts word_array
 	arr.each do |wd|
 		word_array.each do |a|
 		     result[wd] ? result[wd] = result[wd] + 1 : result[wd] =  1 if a.include?(wd) 
        end
 	end
     result
 end

dic = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","low"]
puts substrings("Howdy partner, sit down! How's it going?", dic).inspect
