class Puppy
  
  attr_accessor :name, :breed, :age
  
  def initialize(attrs)
    @name = attrs[:name]
    @breed = attrs[:breed]
    @age = attrs[:age]
  end
  
end