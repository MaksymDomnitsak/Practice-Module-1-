# Програма, яка повертає рівняння виду ах^k, де a = param[0] * param[1]; k = param[1] - 1
class Equation 
  
  def make_eq

    a = param[0].to_i * param[1].to_i
	
	k = param[1].to_i - 1
	
	result = "#{a}x^#{k}"
  
  end
  
  def write_params
  
    puts "Введіть параметри y,z:"

    param = gets.chomp

    param = param.split(" ")

    result = make_eq(param[0],param[1])

    puts result
  
  end
end
