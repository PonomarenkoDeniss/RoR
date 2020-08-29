months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

puts 'Enter the date in numerical format'
print 'Day: '
day = gets.chomp.to_i
print 'Month: '
month = gets.chomp.to_i
print 'Year: '
year = gets.chomp.to_i

#high-year check
if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
  months[1] = 29 
end

day_num = day + months.take(month - 1).sum
puts day_num
