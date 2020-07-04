# Програма, яка повертає значення кварталу для введеного місяця
class Quarter
  def echo_quart

  puts "Введіть номер місяця:"

  month = gets.chomp

  result = case month
    when '1'..'3' then "I квартал"
    when '4'..'6' then "II квартал"
    when '7'..'9' then "III квартал"
    when '10'..'12' then "IV квартал"
    else "Такого номера місяця не існує!"      
  end                    

  puts result
  
  end
end
