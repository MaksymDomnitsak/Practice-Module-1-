# ��������, ��� ���� ���������� ���� ������, ����� ���� �� ������� ������, �� ������ �� ��� �����
class Calculator
  def save_amount_calc

  puts "������ ���� ������, ������� ������, �� ������� ������:"

  tovar = gets.chomp

  tovar = tovar.split(" ")

  sumsave = tovar[0].to_i * tovar[2].to_i * ( tovar[1].to_f / 100 )

  puts "���������� ���� = #{sumsave.round}"
  
  end
end  
