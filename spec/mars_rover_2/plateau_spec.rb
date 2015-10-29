require 'spec_helper'

module MarsRover
  describe Plateau ,"#new" do
    it "should raise an error if plateau is instantiated without limits" do
      expect{Plateau.new}.to raise_error(RuntimeError,"Plateau without limits is a dangerous place")
    end
  end
end