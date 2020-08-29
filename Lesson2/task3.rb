numbers = [0, 1]

loop do 
	n_num = numbers.last(2).sum
	break if n_num > 100
	numbers.push(n_num)
end

puts numbers
