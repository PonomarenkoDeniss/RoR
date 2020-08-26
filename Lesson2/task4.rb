alphabet = ("a".."z").to_a #letters array
needed   =  'a,e,i,o,u'.split(",") # array of vowels
index    = 0
#numbers  = [] 

letters  = Hash.new 
i = 0
#get letter number
while i < alphabet.size
  if needed.include?(alphabet[i])
  	#numbers.push(i)
  	letters[alphabet[i]] = i
  end
  i += 1
end

puts letters

