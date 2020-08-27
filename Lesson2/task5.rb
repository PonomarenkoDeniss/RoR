puts 'Enter the date in numerical format'
print 'Day: '
day = gets.chomp.to_i
print 'Month: '
month = gets.chomp.to_i
print 'Year: '
year = gets.chomp.to_i

#high-year check
if (year.to_f % 4   == 0 && 
	year.to_f % 100 != 0 && 
	year.to_f % 400 == 0
   )
  

else
  
end
