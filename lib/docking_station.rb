require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' unless @bikes.size > 0
    @bikes.pop
  end

  def dock(bike)
    fail 'This station is full' if @bikes.size >= 20
    @bikes << bike
  end


attr_reader :bikes
end
