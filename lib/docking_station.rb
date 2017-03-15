require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bike = nil
  end

  def release_bike
    fail "No bikes available" if @bike == nil
    @bike
  end

  def dock(bike)
    fail "Dock full" if @bike != nil 
    @bike = bike
  end

end
