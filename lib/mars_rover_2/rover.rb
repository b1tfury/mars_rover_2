
module MarsRover
  class Rover
    def initialize(position = nil)
      @position = position
      if @position == nil
        raise("Initial co ordinates are missing")
      end
    end
  end
end