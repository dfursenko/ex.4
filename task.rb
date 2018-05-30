# Задание
# Квадратное уравнение
#
# Найти корни квадратного уравнения. Результат округлить до 2 знаков после запятой.
#   Если корень один - вывести его.
#   Вывести NO ROOTS если корней нет.
#
# На вход подаются три числа a, b и c, разделенные пробелами. -10000 <= a, b, c <= 10000 a != 0
#
# Пример:
# > ruby task.rb 1 0 -4
# > 2.00 -2.00

A, B, C = ARGV.map(&:to_f)
D = B * B - 4 * A * C

if D.zero?
  puts format('%.2f', (-B / 2 / A).round(2))
else
  if D > 0 then
    x1 = (-B - Math.sqrt(D)) / 2 / A
    x2 = (-B + Math.sqrt(D)) / 2 / A
    puts "#{format('%.2f', x2.round(2))} #{format('%.2f', x1.round(2))}"
  else
    puts 'NO ROOTS'
  end
end