# Програма, яка за трома числами(від 1 до 10) та операціями + , * , () знаходить максимум, використовуючи їх
class Maximum
  def max_calc

  puts "Введіть a,b,c(від 1 до 10, можна повторювати):"

  arr = gets.chomp

  arr = arr.split(" ")

  max = 0

  a = arr[0].to_i
  b = arr[1].to_i
  c = arr[2].to_i

  if a + b + c > max then
    max = a + b + c
  end 

  if a * b * c > max then
    max = a * b * c
  end    

  if (a + b) * c > max then
    max = (a + b) * c
  end

  if a * (b + c) > max then
    max = a * (b + c)
  end    

  puts max

  end
end
