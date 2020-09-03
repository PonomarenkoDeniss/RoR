require_relative 'route'
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

  def start_route(route)
    @route = route
    @stantion = @station_list[0]
  end

  def next_stantion
    @route.station_list[@stantion + 1]    
  end

  def prev_stantion
    @route.station_list[@stantion - 1]
  end

end

train = Train.new('701-743', 'freight', 5)
train.speed = 0
puts train.speed
train.carriage_add

route = Route.new('Riga', 'Moskow')

train.start_route(route)

