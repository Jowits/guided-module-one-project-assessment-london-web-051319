class Order
  attr_reader :pizza, :customer

  @@all = []

  def self.all
    @@all
  end

  def initialize(pizza , customer)
    @pizza = pizza
    @customer = customer
    @@all << self
  end

end
