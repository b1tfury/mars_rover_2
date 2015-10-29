module MarsRover
  class Plateau
    def initialize(limits = nil)
      @limits = limits
      if @limits == nil
        raise("Plateau without limits is a dangerous place")
      end
    end
    def limits
      return @limits
    end
  end
end