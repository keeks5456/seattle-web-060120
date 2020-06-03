require 'pry'

characters = [ 
  {name: "Aang", home: "Norther Air Temple", element: "air"},
  {name: "Katara", home: "Souther Water Tribe", element: "Water"},
  {name: "Sokka", home: "Souther Water Tribe", element: "None"},
  {name: "Toph", home: "Ba Sing Se", element: "earth"},
  {name: "Zuko", home: "Fire Nation", element: "Fire"}
]

# First get some practice with Enumerables
class Character
  # attr_reader :name, :home, :element
  # attr_writer :name, :home, :element
  attr_accessor :name, :home, :element
  puts "Right now(Character class top part) self is" + self.to_s

  @@characters = [ ]

  def initialize(name, home, element)
    puts "Right now(intitialize) self is" + self.to_s

    @name = name
    @home = home
    @element = element
    @@characters.push(self)
  end

  def self.characters 
    puts "Right now(class method characters) self is" + self.to_s
    @@characters

  end

  def self.print_all_name
    puts "Right now(class method print_all_name) self is" + self.to_s

    @@characters.each do |character|
      puts character.name
    end

  end

  # def name 
  #   @name
  # end
  # def name=(name) 
  #   @name = name
  # end
  # def home 
  #   @home
  # end
  # def home=(home) 
  #   @home = home
  # end
  
  # def element=(element)
  #   @element = element
  # end
  # def element
  #   @element
  # end
end


characters = [ 
  {name: "Aang", home: "Norther Air Temple", element: "air"},
  {name: "Katara", home: "Souther Water Tribe", element: "Water"},
  {name: "Sokka", home: "Souther Water Tribe", element: "None"},
  {name: "Toph", home: "Ba Sing Se", element: "earth"},
  {name: "Zuko", home: "Fire Nation", element: "Fire"}
]

Character.new( "Aang", "Norther Air Temple",  "air")
Character.new( "Katara", "Souther Water Tribe",  "Water")
Character.new( "Sokka", "Souther Water Tribe",  "None")
Character.new( "Toph", "Ba Sing Se",  "earth")
Character.new( "Zuko", "Fire Nation",  "Fire")
# aang = Character.new(name, home, element)
# katara = Character.new(name, home, element)

puts "Right now(main) self is " + self.to_s
binding.pry
0