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
    def initiation_date
        self.date.to_s
    end
    def self.first_oath
        BloodOath.all.first.follower
    end
end