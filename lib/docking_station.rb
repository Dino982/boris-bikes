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
    fail("Full capacity") if full?
    @bikes.push(bike)
  end

  def full?

      if @bikes.length >= 20
        return true

      else
        return false
      end

  end

  def empty?
    @bikes.empty?
  end



end

docking_station = DockingStation.new
