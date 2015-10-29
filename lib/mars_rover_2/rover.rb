
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
    def turnLeft
      current_direction = @position[2]
      if current_direction =="N"
        current_direction = "W"
      elsif current_direction == "S"
        current_direction = "E"
      elsif current_direction == "E"
        current_direction = "N"
      else
        current_direction ="S"
      end
      @position[2] = current_direction
      return @position
    end
    def move
      x,y = @position[0] ,@position[1]
      current_direction = @position[2]
      if current_direction == "N"
        y += 1
      elsif current_direction == "S"
        y -= 1
      elsif  current_direction == "E"
        x += 1
      else
        x -= 1
      end
      @position[0],@position[1] = x,y
      @position
    end
  end
end

