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
    @pets[:fishes] << (new_fish)
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << (new_cat)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << (new_dog)
  end
  
  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end
  
  def plays_with_cats
    @pets[:cats][0].mood = "happy"
  end
  
  
  
end