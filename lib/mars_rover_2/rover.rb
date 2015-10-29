
module MarsRover
  class Rover
    def initialize(position = nil)
      @position = position
      if @position == nil
        raise("Initial co ordinates are missing")
      end
    end
    def position
      @position
    end
    def turnRight
      current_direction = @position[2]
      if current_direction =="N"
        current_direction = "E"
      elsif current_direction == "S"
        current_direction = "W"
      elsif current_direction == "E"
        current_direction = "S"
      else
        current_direction ="N"
      end
      @position[2] = current_direction
      return @position
    end
  end
end