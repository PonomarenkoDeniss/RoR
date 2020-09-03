class Route
  
  def initialize(start_stantion, end_station)
    @start_stantion = start_stantion
    @end_station    = end_station
    @station_list   = [start_stantion, end_station]
  end

  # -2 - penulimate array element
  def add_station_to_road(stantion_name)
    @station_list.insert(-2, stantion_name)
  end

  def delete_station(station_name)
    @station_list.delete(station_name)
  end

  def stantions_list
    @station_list.each do |stantion|
      print stantion.to_s + '->' 
    end
  end

end

route = Route.new('Riga', 'Tallin')
route.add_station_to_road('Talsi')
route.add_station_to_road('Daugavpils')
route.add_station_to_road('Tartu')

route.delete_station('Talsi')

route.stantions_list