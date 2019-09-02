class Follower
    attr_reader :name, :age, :life_motto 
    @@all = []


    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        self.class.all << self
    end
    def self.all
        @@all
    end

    def cults
        bo = BloodOath.all.select { |bloodoath| bloodoath.follower.name == self.name}
    end

    def join_cult(cult, date)
        BloodOath.new(cult, self, date)
    end

    def self.of_a_certain_age(age)
        self.all.select{|followers| followers.age >= age}
    end 
    def my_cults_slogan
        self.cults.map {|bo| bo.cult.slogan} 
    end
    def self.most_active 
        self.all.sort_by {|follower| follower.cults.count}.last

    end

    def self.top_ten
        arr = self.all.sort_by {|follower| follower.cults.count}
        arr = arr.reverse
        arr[0..9]
    end


end