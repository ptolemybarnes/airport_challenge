require 'plane'

describe Plane do

  it 'is flying when created' do
    expect(subject).to be_flying
  end

  it 'can land' do
    subject.land
    expect(subject).not_to be_flying
  end

  it 'is landed after landing' do
    subject.land
    expect(subject).to be_landed
  end

  xit 'can take off'

  xit 'is flying after take off'

end
