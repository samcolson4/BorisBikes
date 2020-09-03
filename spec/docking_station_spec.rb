require 'Docking_Station'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it "Gets a bike, and then expects the bike to be working" do
      station = DockingStation.new
      expect(station.release_bike).to be_kind_of(Bike)
      bike = Bike.new
      expect(bike.working?).to eq true
    end

    context "Docks a bike at a docking station"
      it { is_expected.to respond_to(:dock).with(1).argument }

    context "It is expected to respond to a bike"
      it { is_expected.to respond_to(:bike) }

    it 'docks something' do
      bike = Bike.new
      station = DockingStation.new
      expect(station.dock(bike)).to eq bike
    end

    it 'returns a docked bike' do
      bike = Bike.new
      station = DockingStation.new
      station.dock(bike)
      expect(station.bike).to eq bike
    end
  describe 'release bike' do
    it "raises an error if no bike docked" do
      station = DockingStation.new
      expect { station.release_bike }.to raise_error "No bike avail"
    end
  end
end

