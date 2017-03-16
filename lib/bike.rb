class Bike

  def initialize
    @status = true
  end

  def working?
    true if @status == true
  end

  def is_broken
    @status = false
  end

  attr_accessor :status
end
