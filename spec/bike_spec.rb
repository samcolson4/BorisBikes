require 'Bike'

describe Bike do
    context "bike should respond to working"
  it { is_expected.to respond_to :working? } 
end