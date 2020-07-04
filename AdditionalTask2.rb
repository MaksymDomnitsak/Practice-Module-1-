# Програма, яка рахує заощаджену суму грошей, ввівши ціну та кількість товару, та знижку на цей товар
class Calculator
  def save_amount_calc

  puts "Введіть ціну товару, відсоток знижки, та кількість товару:"

  tovar = gets.chomp

  tovar = tovar.split(" ")

  sumsave = tovar[0].to_i * tovar[2].to_i * ( tovar[1].to_f / 100 )

  puts "Заощаджена сума = #{sumsave.round}"
  
  end
end  
