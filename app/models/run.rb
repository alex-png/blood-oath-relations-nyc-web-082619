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
al = Follower.new("Al Capone", 35, "I don't know no Italians")
manson_fam.recruit_follower(al, 1945)
outfit = Cult.new("The Outfit", "Chicago", 1920, "Omerta")
union = Cult.new("The Workers Union", "Chicago", 1940, "Workers Revolt!")
outfit.recruit_follower(al, 1945)
union.recruit_follower(al, 1945)


binding.pry
