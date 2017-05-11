require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail("No bikes left") if @bikes.length == 0
    @bikes.pop
  end

  def dock(bike)
    fail("Full capacity") if @bikes.length == 20
    @bikes.push(bike)
  end

end

docking_station = DockingStation.new
