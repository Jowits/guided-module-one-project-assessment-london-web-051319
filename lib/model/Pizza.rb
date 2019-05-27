class Pizza
  attr_reader :name, :price

  @@all = []

  def self.all
    @@all
  end

  def initialize(name , price)
    @name = name
    @price = price
    @@all << self
  end
end
