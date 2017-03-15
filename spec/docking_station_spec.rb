require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

describe '#release_bike' do
  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(bike).to be_working
  end
end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns the docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'return error when there are no bikes' do
     subject.instance_variable_get(:@bike) == nil
      expect { subject.release_bike }.to raise_error "No bikes available"

  end

  it 'returns error if the dock is full' do
    bike = Bike.new
    subject.dock(bike)
     subject.instance_variable_get(:@bike) != nil
      expect { subject.dock(bike)}.to raise_error "Dock full"
  end
end
