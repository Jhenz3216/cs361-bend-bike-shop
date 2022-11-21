class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    self.bike.price + (self.weight * 2)
  end

  def weight
    self.bike.weight + self.bike.luggage.weight
  end

end