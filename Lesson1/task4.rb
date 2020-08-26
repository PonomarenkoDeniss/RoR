puts "Введи 3 коэффициента: a, b и c"
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f

d = b**2 - 4 * a * c
if( d < 0 )
  puts 'Корней нет'
  return d
end

sqrt = Math.sqrt(d)

if( d > 0 )
  puts "Дискриминант: #{d}"
  x1 = (-b + sqrt)/(2*a)
  x2 = (-b - sqrt)/(2*a)
  puts "Корни: #{x1}, #{x2}"
elsif( d == 0  )
  puts "Дискриминант: #{d}"
  puts "Корень: #{x1}"
end

