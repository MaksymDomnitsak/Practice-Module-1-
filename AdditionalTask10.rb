class String
  def max_weight_symbol

  puts "Введіть рядок букв:"

  str = gets.chomp
  str = str.chars
  temp = []
  max = 0
  
  for i in 0..str.length
    first = str.index(str[i])
	last = str.rindex(str[i])
	if first == last then
	  next
	end
    if last - first > max then
      temp = []
	  temp << str[first]
      max = last - first
    end
    if (last - first == max) && (temp.include?(str[first]) == false) then
      temp << str[first]
    end
  end	
  
  temp.sort!
  
  puts temp[0]
  
  end
end
