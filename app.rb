require_relative "../hayk-assessment-build-classes-and-objects/building.rb"
require "pry"


building_1 = Building.new("Flatiron Building", "New York", 20, 2000)
building_2 = Building.new("Sears Tower", "New York", 60, 4000)
building_3 = Building.new("MET", "New York", 5, 0)
building_4 = Building.new("Empire State", "New York", 120, 6000)

building_1.placard
binding.pry
