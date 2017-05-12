require './lib/docking_station.rb'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it {is_expected.to respond_to(:dock).with(1).argument}


  describe '#release_bike' do

    it 'no release when no bike' do
      expect {subject.release_bike}.to raise_error("No bikes left")
    end

  end

  describe '#dock' do
  it 'limits capacity' do
    DockingStation::DEFAULT_CAPACITY.times do
      subject.dock(Bike.new)
    end
    expect {subject.dock(Bike.new)}.to raise_error("Full capacity")
  end



    it 'docks bike' do
      bike = Bike.new
      expect(subject.dock(bike).length).to eq 1
    end
  end

  it 'see bike docked' do
    bike  = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'sets default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end


describe 'initialize' do
  it 'has a variable capacity that equals an argument' do
    docking_station = DockingStation.new(50)
    50.times { docking_station.dock Bike.new }
    expect { docking_station.dock Bike.new }.to raise_error 'Full capacity'
  end
end

end
