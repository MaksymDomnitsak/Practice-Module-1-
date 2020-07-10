class Calculator
  def calc_alter

  puts "Введіть масив чисел( через пробіл ):"

  set = gets.chomp
  set = set.split(" ")
  
  result = 0
  
  for i in 0..(set.length-1) 
    if set[i].to_i >= 0 then
      if set[i+1].to_i < 0 then
        result += 1
      else next
	  end
    else 
      if set[i+1].to_i >= 0 then
        result += 1
      else next
      end
    end	
  end	

  puts "Кількість знакозмін = #{result}"
  end
end  
