module MarsRover
  class CLI
      def checkLimits(plateau=nil, rov=nil)
        limits = plateau.limits
        current_position = rov.position
        if current_position[0]<0 || current_position[0] > limits[0] ||current_position[1] < 0 || current_position[1] > limits[1]
          raise "Rover wants to see the outside world"
        end
      end
  end
end