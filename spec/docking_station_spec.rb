require 'docking_station'
describe DockingStation do

  describe '#release_bike' do
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

      it 'raises an error when bike is released' do
       expect { subject.release_bike }.to raise_error('No bikes available')
      end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

describe '#release_bike' do
  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(bike).to be_working
  end
end
describe '#dock_bike' do
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'raises an error when station is full' do
    bike = Bike.new
    20.times { subject.dock(bike) }
    expect { subject.dock(bike) }.to raise_error('This station is full')
  end
end

  it 'returns the docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end
end
