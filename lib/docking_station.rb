require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail("No bikes left") unless @bike
    @bike
  end

  def dock(bike)
    fail("Full capacity") if @bike
    @bike = bike
  end

end

docking_station = DockingStation.new
