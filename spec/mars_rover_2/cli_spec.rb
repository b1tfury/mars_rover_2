require 'spec_helper'
module MarsRover
  describe CLI,"#checkLimits" do
    it "should raise error that Rover has moved out of plateau boundary" do
      plateau = Plateau.new([5,5])
      rov = Rover.new([1,1,"N"]).turnLeft.move.move
      expect{CLI.new.checkLimits(plateau,rov)}.to raise_error(RuntimeError,"Rover wants to see the outside world")
    end
  end
end