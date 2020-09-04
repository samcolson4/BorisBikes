require 'Docking_Station'

bike = Bike.new
station_no_bike = DockingStation.new

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it "Gets a bike, and then expects the bike to be working" do
      subject.dock(bike)
      expect(subject.release_bike).to be_kind_of(Bike)
      expect(bike.working?).to eq true
    end

    context "Docks a bike at a docking station"
      it { is_expected.to respond_to(:dock).with(1).argument }

    context "It is expected to respond to a bike"
      it { is_expected.to respond_to(:bike_rack) }

    it 'docks something' do
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'returns a docked bike' do
      subject.dock(bike)
      expect(subject.bike_rack).to eq [bike]
    end

=begin
    describe '#dock(bike)' do
      it 'adds a new bike to bike_rack'
       expect(subject.bike_rack.count).to eq subject.bike_rack.count
    end
=end

=begin
  describe 'full?' do
    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new}
      expect { subject.full? }.to raise_error('Bike already docked')
   end
  end
  
  describe '#rack_empty?' do
  it 'raises an error when there are no bikes available' do
    expect { subject.rack_empty? }.to raise_error('No bikes available')
  end
 end
=end


end
