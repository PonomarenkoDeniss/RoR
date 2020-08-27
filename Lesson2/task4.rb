alphabet = ("a".."z").to_a #letters array
needed   =  'a,e,i,o,u,y'.split(",") # array of vowels
letters  = Hash.new #create hash
i = 0

#get letter number
while i < alphabet.size
  if needed.include?(alphabet[i])
  	letters[alphabet[i]] = i
  end
  i += 1
end

puts letters
