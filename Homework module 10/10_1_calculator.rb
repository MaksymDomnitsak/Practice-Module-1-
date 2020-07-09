# 
# Калькулятор з такими можливостями:
# 1. додавання, віднімання, множення, ділення
# 2. додавання, віднімання з пам’яті і перегляд її стану
# 3. ланцюгування методів @calc.add(3).multiply(6) => 18
# 4. збереження актуального стану і зчитування його
# 5. можливість очищення актульного стану
# 
# Змінна калькулятора може бути ініціалізована певним значенням.
# Доступ до пам’яті та актуального результату здійснюється за допомогою
# ґеттерів відповідних полів об’єкту, а саме методів result та memory.
# 

class Calculator
  attr_reader :memory, :result

  def initialize num = 0
    @result = num
    @memory = 0
  end

  def add param
    @result += param
	self
  end

  def substract param
    @result -= param
	self
  end

  def multiply param
    @result *= param
	self
  end

  def divide param
    @result /= param
	self
  end	

  def add_to_memory
    @memory += @result
	self
  end
 
  def substract_from_memory 
    @memory -= @result
	self
  end

  def result
    @result
  end

  def memory
    @memory
  end
  
  def clear
    @result = 0
    @memory = 0
  end	
end