puts "Валидатор треугольников"
puts "Введи первую сторону треугольника"
a = gets.chomp.to_f
puts "Введи вторую сторону треугольника"
b = gets.chomp.to_f
puts "Введи третью сторону треугольника"
c = gets.chomp.to_f

if (a == b && b == c && a == c)
  answer = "Это равностороний треугольник"
elsif (a == b || b == c || a == c)  
  answer = "Это равнобедренный треугольник"
elsif (a**2 == b**2 + c**2 || b**2 == a**2 + c**2 || c**2 == a**2 + b**2)
  answer = "Это прямоугольный треугольник"
else
  answer = "Такого треугольника не существует"
end
puts answer
