﻿# Програма для перевірки, чи дане число є простим.
# використовується решето Ерастрофена з оптимізацією
# Оптимізація полягає в початку висіювання наступного
# не викресленого числа з його квадрату.

# Ви маєте зреалізувати логіку для формування масиву-шерета,
# його просіювання та виведення інформації, чи вказане число є простим.

class Calculator
  attr_accessor :sieve

  # створити масив з n чисел,де n - число,
  # яке ми хочемо перевірити на простоту
  def setup_prime n
    @sieve = []
    # тут маємо записати у масив числа від 2 до n
    # числа мають мати відповідні індекси
    # наприклад seive[10] => 10
    for i in 2..n
	  @sieve[i] = i
    end
  end

  # дана функція отримує на вхід непросіджений масив
  # на виході отримуємо масив, який містить тільки прості числа
  # на діапазоні від 2 до вказаного числа n
  def sieve_prime_upto n
    # почергово проходимось по всіх елементах масиву
    for i in 2..n	
      # принагідно перевіряємо, чи поточний елемент вже не позначений
	  # якщо він позначений, можемо перейти на наступний крок циклу
      next unless @sieve[i] != nil
      # якщо елемент не позначений, то починаючи від його квадрату
      # помічаємо всі кратні йому елементи в масиві
      (i * i).step(n, i) do |j|
		if j % i == 0 then
		  @sieve[j] = nil
        end
      end	  
    end
    # забрати всі позначені елементи з масиву @sieve
    # за допомогою функції compact
    @sieve = sieve.compact
  end

  # основна функція, яка формує масив, просіює його члени та виводить результат
  # на вході отримує число - яке ми перевірятимемо
  # на виході має повернути true - якщо число просте,
  # або false у іншому випадку.
  def sieve_prime? n
    @sieve = sieve.select { |temp| temp == n }	
    if @sieve[0] == n then
	  return true
      else return false
    end	
  end
end
