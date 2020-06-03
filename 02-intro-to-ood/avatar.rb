require 'pry'

characters = [ 
  {name: "Aang", home: "Norther Air Temple", element: "air"},
  {name: "Katara", home: "Souther Water Tribe", element: "Water"}, 
  {name: "Sokka", home: "Souther Water Tribe", element: "None"},
  {name: "Toph", home: "Ba Sing Se", element: "earth"},
  {name: "Zuko", home: "Fire Nation", element: "Fire"}
]
  # reader and a writer
  # getters and setters
  # setter : asignments
  # getter : what we can call a setter ( get access to it)
  # attr_accessor
  # name = ""
  # home = ""
  # element = ""

  # local variables
  # name
  # for instances(properties that we define)
  # @name
  # @@characters

  #constructor 

class Character
  # binding.pry
  # readers and getters
  attr_reader(:element)
  #writers and setters
  # attr_writer(:name, :home)
  #defines out getters/readers && setters/writers
  attr_accessor :name, :home

  @@characters = [ ]

  def initialize(name, home, element)
    @name = name
    @home = home
    @element = element
    @@characters << self
    # binding.pry
  end

  def self.characters
    @@characters
  end

end

# aang = Character.new("Aang", "Air Temple", "air")
# katara = Character.new("Katara", "Souther Water Tribe", "water")
binding.pry
