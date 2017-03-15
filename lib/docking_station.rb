require_relative 'bike'

class DockingStation
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'This station is full' if @bike
    @bike = bike
  end

attr_reader :bike
end
