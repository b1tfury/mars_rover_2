require 'spec_helper'
module MarsRover
  describe Rover,"#new" do
    it "should raise an error if rover without initial cordinates is instantiated" do
      expect{Rover.new}.to raise_error(RuntimeError,"Initial co ordinates are missing")
    end
  end
  describe Rover,"#position" do
    it "should return the postion of rover at any monent " do
      expect(Rover.new([1,1,"N"]).position).to eq([1,1,"N"])
    end
  end
  describe Rover,"#turnRight" do
    it "should turn rover in right direction" do
      rov =Rover.new([1,1,"N"]).turnRight
      expect(rov).to eq([1,1,"E"])
      rov =Rover.new([1,1,"S"]).turnRight
      expect(rov).to eq([1,1,"W"])
      rov =Rover.new([1,1,"E"]).turnRight
      expect(rov).not_to eq([1,1,"W"])
      rov =Rover.new([1,1,"W"]).turnRight
      expect(rov).not_to eq([1,1,"W"])
    end
  end
  describe Rover,"#turnLeft" do
    it "should turn rover in left direction" do
      rov = Rover.new([1,1,"N"]).turnLeft
      expect(rov).to eq([1,1,"W"])
      rov = Rover.new([1,1,"S"]).turnLeft
      expect(rov).to eq([1,1,"E"])
      rov = Rover.new([1,1,"E"]).turnLeft
      expect(rov).not_to eq([1,1,"S"])
      rov = Rover.new([1,1,"W"]).turnLeft
      expect(rov).not_to eq([1,1,"W"])
    end
  end
  describe Rover,"#move" do
    it "should move the rover 1 unit foreward in corresponding direction" do
      rov = Rover.new([1,1,"N"]).move
      expect(rov).to eq([1,2,"N"])
      rov = Rover.new([1,1,"S"]).move
      expect(rov).to eq([1,0,"S"])
      rov = Rover.new([1,1,"E"]).move
      expect(rov).not_to eq([2,1,"N"])
      rov = Rover.new([1,1,"W"]).move
      expect(rov).not_to eq([1,2,"W"])
    end
  end
end