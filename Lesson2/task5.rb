months = {1  => 31, 
          2  => 28, 
          3  => 31, 
          4  => 30, 
          5  => 31, 
          6  => 30, 
          7  => 31, 
          8  => 31, 
          9  => 30, 
          10 => 31, 
          11 => 30, 
          12 => 31
         }

puts 'Enter the date in numerical format'
print 'Day: '
day = gets.chomp.to_i
print 'Month: '
month = gets.chomp.to_i
print 'Year: '
year = gets.chomp.to_i

#high-year check
if (year % 4 == 0 && year % 100)
  months[2] = 29 
end

day_num = 0
needed = (1..(month - 1)).to_a
needed.each do |days|
  day_num += months[days]
end

puts day_num + day
