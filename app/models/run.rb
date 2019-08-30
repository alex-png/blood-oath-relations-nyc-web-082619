require "pry"
require_relative "bloodoath"
require_relative "follower"
require_relative "cult"

charles = Follower.new("Charles Manson", 35, "I roll in nickels")
manson_fam = Cult.new("Manson Family", "California", 1988, "kill through music")

alex = Follower.new("Alex", 21, "i dont know much")
manson_fam.recruit_follower(alex, 2019)
manson_fam.recruit_follower(charles, 1988)

mormon = Cult.new("Latter Day Saints", "Palmyra, New York", 1826, "Families are Eternal")
jallen = Follower.new("Jallen", 26, "Fuck bitches, get money")
mormon.recruit_follower(alex, 2019)
mormon.recruit_follower(jallen, 1993)

binding.pry
