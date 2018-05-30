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

def no_roots
  'NO ROOTS'
end

def one_root
  -B / 2 / A
end

def two_roots
  x1 = (-B - Math.sqrt(D)) / 2 / A
  x2 = (-B + Math.sqrt(D)) / 2 / A
  "#{x1.round(2)} #{x2.round(2)}"
end

puts result = if D.zero?
                one_root
              else
                D > 0 ? two_roots : no_roots
              end