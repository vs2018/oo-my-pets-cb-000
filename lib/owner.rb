class Owner
  
  attr_accessor :pets
  
  @@all = []
  
  def initialize(type)
    # @pets = {fishes: [], cats: [], dogs: []}
    @@all << self if type == "human"
  end
  
  def self.all
    @@all
  end
end