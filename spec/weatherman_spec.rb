require './lib/weatherman'

describe Weatherman do

  it { is_expected.to respond_to(:stormy?) } 

end

