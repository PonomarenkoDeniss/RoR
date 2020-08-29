alphabet = ("a".."z").to_a 
needed   =  'aeiouy'
letters  = {} 

alphabet.each.with_index(1) do |letter, num|
	letters[letter] = num if needed.include?(letter)
end

puts letters
