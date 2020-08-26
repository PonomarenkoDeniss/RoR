puts "Как тебя зовут?"
name = gets.chomp.to_s
puts "#{name}, какого ты роста?"
growth = gets.chomp.to_i

if ((growth - 110) * 1.15 < 0)
  puts "#{name}, Ваш вес уже оптимальный"
else
  res = ((growth - 110) *1.15).to_i.to_s
  puts "#{name}, твой примерный вес - " + res
end
