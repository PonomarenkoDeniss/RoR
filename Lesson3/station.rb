class Station
  
  def initialize(name)
    @name   = name
    @trains = {}

    puts 'Station successfully built'
  end

  def take_a_train(train)
  	@trains[train] = {"number" => train['number'], "type" => train['type']}
	end

	def train_list
		puts @trains
	end

	def trains_type
		freight_train = []
		landing_train = []
		@trains.each do |number|
			if number['type'] == 'freight'
				freight_train.push(number)
			else
				landing_train.push(number)
			end
		end
		puts "Freights trains: #{freight_train}"
		puts "Landings trains: #{landing_train}"
	end


end

station = Station.new('Moscow')


