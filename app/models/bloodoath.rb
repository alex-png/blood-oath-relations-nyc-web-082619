class BloodOath
    attr_reader :date, :follower, :cult
    @@all = []
    def initialize(cult, follower, date)
        @date = date
        @cult = cult
        @follower = follower
        self.class.all << self
    end
    def self.all
        @@all
    end
end