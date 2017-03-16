class Bike

  def initialize
    @working = true
  end

  def working?
    true if @working == true
  end

  def is_broken
    @working = false
  end

  attr_accessor :working
end
