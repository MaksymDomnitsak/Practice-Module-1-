# Написати програму, яка обраховує вік користувача, базуючись на даті народження у певному форматі
# Програма має видавати вік, або видавати "-1" у випадку некоректної вхідної інформації


# Ви маєте дописати частину, де вхідна інформація перевіряється на коректність
# та записує у змінну result очікуване значення - кількість років людини, або -1.

class Calculator
  def console_calculator

      # Остаточний вік користувача програми
      result = 0

      # Вивід інформаційного повідомлення
      puts "Програма обчислить ваш вік"
      puts "Введіть дату свого народження у такому форматі дд-мм-рррр"
      
      # Зчитування даних з консолі
      dob = gets.chomp

      # Формування масиву, внаслідок дії методу split (поділити) класу String
      dob = dob.split "-"

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день народження користувача
      dob_year = dob[2]
      dob_month = dob[1]
      dob_day = dob[0]

      # Використання вбудованого об’єкту Time для знаходження поточної дати
      current_time = Time.new

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день місяця
      current_year = current_time.year.to_i
      current_month = current_time.month.to_i
      current_day = current_time.day.to_i
      
    	# Алгоритм

      # Перевірка вхідних даних на правильність та обчислення дати народження.
      # Поелементний аналіз базується на порівнянні послідовно років, місяців, днів місяця.
      dob_year = dob_year.to_i
	  dob_month = dob_month.to_i
	  dob_day = dob_day.to_i
	  if (dob_month > 12) || ((dob_month == 2) && (dob_year % 4 == 0) && (dob_day > 29)) || ((dob_month == 2) && (dob_year % 4 != 0) && (dob_day > 28)) then
	    result = -1
        elsif ((dob_month == 4 || dob_month == 6 || dob_month == 9 || dob_month == 11) && (dob_day > 30))
          result = -1
          elsif ((dob_month == 1 || dob_month == 3 || dob_month == 5 || dob_month == 7 || dob_month == 8 || dob_month == 10 || dob_month == 12) && (dob_day > 30))
            result = -1		  
		    elsif ((current_year > dob_year) && (current_month < dob_month)) || ((current_year > dob_year) && (current_month == dob_month) && (current_day < dob_day))
		      result = current_year - dob_year - 1
	          elsif ((current_year > dob_year) && (current_month == dob_month) && (current_day >= dob_day)) || ((current_year > dob_year) && (current_month > dob_month))
		        result = current_year - dob_year
		        elsif (current_year == dob_year) 
		          result = 0
		          else
		          result = -1
	  end
      puts result;
  end
end
