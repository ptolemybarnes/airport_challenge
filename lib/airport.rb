class Airport
  DEFAULT_CAPACITY = 10
  attr_reader :capacity

  def initialize
    @capacity = DEFAULT_CAPACITY
    @hangar   = []
  end

  def land plane
    raise 'The airport is full.' if hangar.count >= capacity
    plane.land
    hangar << plane
  end

  def launch plane
    hangar.delete plane
    plane.take_off
  end

  def in_hangar? plane
    hangar.include? plane
  end

  private

  attr_reader :hangar

end
