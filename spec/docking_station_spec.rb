require './lib/docking_station.rb'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it {is_expected.to respond_to(:dock).with(1).argument}


  describe '#release_bike' do

    it 'no release when no bike' do
      expect {subject.release_bike}.to raise_error("No bikes left")
    end

  end

  it 'docks bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'see bike docked' do
    bike  = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end



end
