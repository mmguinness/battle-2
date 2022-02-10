class Player
    attr_reader :name 
    attr_accessor :hit_points

    def initialize(name)
        @name = name
        @hit_points = 100
    end
end