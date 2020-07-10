class Test
  def letter_test

  puts "Введіть рядок латинських букв:"

  str = gets.chomp
  
  min = 122
  str = str.chars

  for i in 0..str.length-1
    if str[i].ord < min then
      min = str[i].ord
    end
  end
  
  for i in min..min+str.length-1
    cnt = str.count "#{i.chr}"
    if cnt == 0 then
      result = false
	  break
    end	  
    if cnt > 1 then
	  result = false
	  break
	end
    if i == min+str.length-1
      result = true
    end	  
  end
  
  puts result
  
  end
end

