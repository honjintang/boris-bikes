require 'docking_station'

describe DockingStation do

  describe 'initialization' do
    #let(:bike) {Bike.new}
    bike = double(:bike)
    it 'defaults capacity' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
  end

    it 'assigns new capacity' do
      n = rand(0..100)
      subject.capacity = n
      expect(subject.capacity).to eq n
    end
  end

  describe '#release_bike' do
      it 'releases a bike' do
        subject.dock double(:bike)
        bike = subject.release_bike
        expect(bike).to be_working
      end

      it 'does not release broken bike' do
        bike = double(:bike)
        bike.is_broken
        subject.dock(bike)
        expect{ subject.release_bike }.to raise_error('This is a broken bike')
      end

      it 'raises an error when bike is released' do
       expect { subject.release_bike }.to raise_error('No bikes available')
      end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

describe '#release_bike' do
  it 'releases working bikes' do
    bike = double(:bike)
    subject.dock(bike)
    expect(bike).to be_working
  end
end

describe '#dock' do
  it 'docks something' do
    #bike = Bike.new
    expect(subject.dock(:bike)).to eq [:bike]
  end

  it 'raises an error when full' do
    subject.capacity.times {subject.dock double :bike}
    expect {subject.dock double(:bike)}.to raise_error 'Docking station full'
  end

end

  it 'returns the docked bikes' do
    #bike = Bike.new
    subject.dock(:bike)
    expect(subject.bikes).to eq [:bike]
  end
end
