class Owner
  
  attr_accessor :pets
  
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
    @@all = []
  end
  
  
end