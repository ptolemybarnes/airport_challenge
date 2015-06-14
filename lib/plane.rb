class Plane
  attr_reader :flying

  def initialize
    self.flying = true
  end

  def flying?
    flying
  end

  def land
    self.flying = false
  end
  
  def landed?
    !flying
  end

  private

  attr_writer :flying

end
