puts "Как тебя зовут?"
name = gets.chomp.to_s
puts "#{name}, какого ты роста?"
growth = gets.chomp.to_i
puts (growth - 110) *1.15 < 0 ? "#{name}, Ваш вес уже оптимальный" : "#{name}, твой примерный вес - " + ((growth - 110) *1.15).to_i.to_s