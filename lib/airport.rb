class Airport

  def initialize
    @hangar = []
  end

  def land plane
    plane.land
    hangar << plane
  end

  def launch plane
    plane.take_off
  end

  def in_hangar? plane
    hangar.include? plane
  end

  private

  attr_reader :hangar

end
