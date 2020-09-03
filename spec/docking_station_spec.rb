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

  end
