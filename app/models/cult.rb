require 'pry'
class Cult 
    attr_reader :name, :location, :founding_year
        @@all = []
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        self.class.all << self
    end
    def slogan
        @slogan
    end
    def founding_year
        @founding_year
    end

    def self.all
        @@all
    end
    def recruit_follower(follower, date)
        BloodOath.new(self, follower, date)
    end
    def cult_population
        BloodOath.all.count {|follower| follower.cult == self}
    end
    def self.find_by_name(name)
        BloodOath.all.find_all {|cult| cult.follower.name == name}
    end
    def self.find_by_location(location)
        self.all.find_all {|cult| cult.location == location}
    end
    def self.find_by_founding_year(year)
        self.all.find_all {|cult| cult.founding_year == year}
    end
end
