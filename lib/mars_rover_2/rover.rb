
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
      if @position[2] =="N"
        @position[2] = "E"
      elsif @position[2] == "S"
        @position[2] = "W"
      elsif @position[2] == "E"
        @position[2] = "S"
      elsif @position[2] == "W"
        @position[2] ="N"
      end
      return Rover.new(@position)
    end
    def turnLeft
      if @position[2] =="N"
        @position[2] = "W"
      elsif @position[2] == "S"
        @position[2] = "E"
      elsif @position[2] == "E"
        @position[2] = "N"
      elsif @position[2] == "W"
        @position[2] ="S"
      end
      return Rover.new(@position)
    end
    def move
      @position[2] = @position[2]
      if @position[2] == "N"
        @position[1] += 1
      elsif @position[2] == "S"
        @position[1] -= 1
      elsif  @position[2] == "E"
        @position[0] += 1
      elsif @position[2] == "W"
        @position[0] -= 1
      end
      return Rover.new(@position)
    end
  end
end

