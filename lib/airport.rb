class Airport
  attr_reader :capacity, :weatherman
  DEFAULT_CAPACITY = 10

  def initialize(weatherman)
    @weatherman = weatherman
    @capacity   = DEFAULT_CAPACITY
    @hangar     = []
  end

  def land plane
    raise 'Cannot land plane due to poor weather conditions.' if weatherman.stormy?
    raise 'The airport is full.'                              if at_capacity?
    plane.land
    hangar << plane
  end

  def launch plane
    raise 'Cannot launch plane due to poor weather conditions.' if weatherman.stormy?
    hangar.delete plane
    plane.take_off
  end

  def in_hangar? plane
    hangar.include? plane
  end

  private
  
  attr_reader :hangar

  def at_capacity?
    hangar.count >= capacity
  end

end
