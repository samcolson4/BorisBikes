require 'Docking_Station'

station = DockingStation.new
bike = Bike.new


describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it "Gets a bike, and then expects the bike to be working" do
      station.dock(bike)
      expect(station.release_bike).to be_kind_of(Bike)
      expect(bike.working?).to eq true
    end

    context "Docks a bike at a docking station"
      it { is_expected.to respond_to(:dock).with(1).argument }

    context "It is expected to respond to a bike"
      it { is_expected.to respond_to(:bike) }

    it 'docks something' do
      expect(station.dock(bike)).to eq bike
    end

    it 'returns a docked bike' do
      station.dock(bike)
      expect(station.bike).to eq bike
    end

    describe '#release_bike' do
     it 'raises an error when there are no bikes available' do
       expect { subject.release_bike }.to raise_error('No bikes available')
     end
   end
end
