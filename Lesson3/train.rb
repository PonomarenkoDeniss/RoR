class Train

	attr_writer :speed
	attr_reader :speed

	attr_reader :carriage

	#type - freight, landind.
	def initialize(number, type, amount)
		@train_number = number
		@train_type   = type
		@carriage     = amount
		@speed        = 0

		puts "Train number - #{@train_number}"
	end

	def stop
		@speed = 0
		puts 'The train stopped'
	end

	def carriage_add(add = true)
		if (@speed == 0)
			if(add)
				@carriage += 1
				puts 'Added one carriage'
			else
				@carriage -= 1
				puts 'Decrease one carriage'
			end
		else
			puts 'Stop train pls'
		end
	end

end

train = Train.new('701-743', 'freight', 5)
train.speed = 60
puts train.speed
