module MarsRover
  class CLI
      def start
        puts "Enter the Plateau limits"
        pLimits= gets
        pLimits =pLimits.split(" ")
        pLimits[0],pLimits[1] = pLimits[0].to_i,pLimits[1].to_i
        puts "Enter Rover intial Coordinates"
        rpoints = gets
        rpoints = rpoints.split(" ")
        rpoints[0],rpoints[1] = rpoints[0].to_i,rpoints[1].to_i
        puts "Enter the commands "
        commads = gets
        commads = commads.split("")
        plateau = Plateau.new(pLimits)
        rov = Rover.new(rpoints)
        commads.each do |command|
          if checkLimits(plateau,rov)
            if command == "M"
              rov = rov.move
            elsif command == "L"
              rov = rov.turnLeft
            elsif command == "R"
              rov = rov.turnRight
            end
          end
        end
        print "Rover final position is : ",rov.position[0]," ",rov.position[1]," ",rov.position[2],"\n"
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