class Customer
  attr_reader :name, :address

  @@all = []

  def self.all
    @@all
  end

  def initialize(name , address)
    @name = name
    @address = address
    @@all << self
  end
end
