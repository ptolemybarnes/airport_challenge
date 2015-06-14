require 'airport'

## Note these are just some guidelines!
## Feel free to write more tests!!

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport
# and how that is implemented.
#
# If the airport is full then no planes can land

describe Airport do

  let(:plane) { plane = double :plane, land: nil, take_off: nil }

  describe 'launch' do # method renamed to launch as wasn't happy with #take_off
    
    it 'instructs a plane to take off' do
      subject.land plane
      expect(plane).to receive :take_off
      subject.launch plane
    end

    it 'releases a plane' do
      subject.land plane
      subject.launch plane
      expect(subject.in_hangar?(plane)).to eq false
    end
  end

  describe 'landing' do
    
    it 'instructs a plane to land' do
      expect(plane).to receive :land
      subject.land plane
    end

  end
  
  it 'knows when a plane is in its hangar' do
    subject.land plane
    expect(subject.in_hangar?(plane)).to eq true
  end

  it 'knows when a plane is not in its hangar' do
    subject.land plane
    expect(subject.in_hangar?(double :plane)).to eq false
  end

  describe 'traffic control' do

    context 'when airport is full' do
      it 'does not allow a plane to land' do
        subject.capacity.times { subject.land plane }
        expect { subject.land plane }.to raise_error 'The airport is full.'
      end
    end

    # Include a weather condition.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy,
    # the plane can not take off and must remain in the airport.
    #
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    context 'when weather conditions are stormy' do
      xit 'does not allow a plane to take off'

      xit 'does not allow a plane to land'
    end
  end
end
