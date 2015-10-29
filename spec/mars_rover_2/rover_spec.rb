require 'spec_helper'
module MarsRover
  describe Rover,"#new" do
    it "should raise an error if rover without initial cordinates is instantiated" do
      expect{Rover.new}.to raise_error(RuntimeError,"Initial co ordinates are missing")
    end
  end
end