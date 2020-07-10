class Printer
  def check_print

  puts "Введіть рядок латинських букв(кольори принтера a-f):"

  printer = gets.chomp

  printer = printer.chars
  count = 0
  errletters = 0

  for i in 0..printer.length-1
    if (printer[i] == 'a' )|| (printer[i] == 'b') || (printer[i] == 'c') || (printer[i] == 'd') || (printer[i] == 'e') || (printer[i] == 'f')  then
      count += 1
    else 
      count += 1
      errletters += 1
    end
  end	

  puts "#{errletters}/#{count}"
  
  end
end
