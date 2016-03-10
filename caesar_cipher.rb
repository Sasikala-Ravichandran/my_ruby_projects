def cipher(word,n)
  arr = []
  word.chars.map do |ch|
    ascii_value =  ch.ord
    shift_value = ascii_value + (n % 26)
    if(65..90).cover?ascii_value or (97..122).cover?ascii_value  # Checking whether a char is an  alphbet or not
      if(65..90).cover?ascii_value
        shift_value>90 ? ascii_value = 65 + shift_value - 91 : ascii_value = shift_value 
      else (97..122).cover?ascii_value
        shift_value>122 ? ascii_value = 97 + shift_value - 123 : ascii_value = shift_value
      end
    else
      ascii_value
    end
    arr << ascii_value.chr
  end
  puts arr.join()
end

cipher("What a string!", 6) 