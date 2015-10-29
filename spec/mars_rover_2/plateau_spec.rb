require 'spec_helper'

module MarsRover
  describe Plateau ,"#new" do
    it "should raise an error if plateau is instantiated without limits" do
      expect{Plateau.new}.to raise_error(RuntimeError,"Plateau without limits is a dangerous place")
    end
  end
  describe Plateau, "#limits" do
    it "should give limits of the plateau " do
      expect(Plateau.new([5,5]).limits).to eq([5,5])
    end
  end
end