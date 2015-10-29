module MarsRover
  class CLI
      def start
        puts "Enter the Plateau limits"
        x,y = gets
        pLmits = [x.to_i,y.to_i]
        puts "Enter Rover intial Coordinates"
        x,y,z = gets
        rpoints = [x.to_i,y.to_i,z]
        puts "Enter the commands "
        commads = gets
        commads = commads.split("")
        plateau = Plateau.new(pLmits)
        rov = Rover.new(rpoints)
        commads.each do |command|
          if checkLimits(plateau,rov)
            if command == "M"
              puts "move"
              rov = rov.move
            elsif command == "L"
              puts "tunr left"
              rov = rov.turnLeft
            else
              puts "turn right"
              rov = rov.turnRight
            end
            puts rov.position
          end
        end
        puts "Rover final position is ", rov.position
      end
      def checkLimits(plateau=nil, rov=nil)
        limits = plateau.limits
        current_position = rov.position
        if current_position[0]<0 || current_position[0] > limits[0] ||current_position[1] < 0 || current_position[1] > limits[1]
          raise "Rover wants to see the outside world"
        else
          return true
        end
      end
  end
end