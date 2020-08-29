basket =  Hash.new
answer = ''
while true
  print 'Product name: '
  product = gets.chomp.to_s
  break if product == "stop"
  print 'Product price: '
  price = gets.chomp.to_f
  print 'Amount: '
  amount = gets.chomp.to_f

  #korzina
  basket[product] = {"price" => price, "amount" => amount} 
  puts "" #indent
end

total_price = 0.00

basket.each do |product_name, data|
  p_price = data['price'] * data['amount']
  puts "Name:   #{product}"
  puts "Price:  #{data['price']}"
  puts "Amount: #{data['amount']}"
  puts "Price * amount:   #{p_price}"
  puts '--------------------'
  total_price += p_price
end
puts "Total price: #{total_price}"
