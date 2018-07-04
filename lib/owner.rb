class Owner
  
  attr_accessor :pets, :name
  
  @@all = []
  @@count = 0
  
  def initialize(type)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self if type == "human"
    @@count += 1 if type =="human"
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@count = 0
  end
  
  def self.count
    @@count
  end
  
  def species
    "human"
  end
  
  def say_species
    "I am a human."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[fishes].push(new_fish)
  end
  
end