class Station

  def initialize(name)
    @name   = name
    @trains = []

    puts 'Station successfully built'
  end

  def take_a_train(train)
    @trains.push(train)
  end

  def send_a_train(train)
    @trains.delete(train)
  end

  def train_list
    puts @trains
  end

  def trains_type
    freight_train = {}
    landing_train = {}
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

train   = Train.new(731-285, 'freight', 15)
train2  = Train.new(732-286, 'landind', 5)

station = Station.new('Moscow')

station.take_a_train(train)
station.take_a_train(train2)

station.trains_type

