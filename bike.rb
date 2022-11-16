# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_contents = BikeCargo.new()
  end

  def rent!
    if self.rented
      puts "Bike is already rented"
    else
      self.rented = true
    end
  end

  def add_cargo(item)
    @cargo_contents.add_cargo(item)
  end

  def remove_cargo(item)
    @cargo_contents.remove_cargo(item)
  end

  def basket_remaining_capacity
    @cargo_contents.basket_remaining_capacity
  end
end


class BikeCargo
  MAX_CARGO_ITEMS = 10

  def initialize(cargo = [])
    @cargo = cargo
  end

  def add_cargo(item)
    if self.basket_remaining_capacity == 0
      puts "Cargo limit has been reached"
    else
      @cargo << item
    end
  end

  def remove_cargo(item)
    for cargo in self.cargo_contents do
      if cargo == item
        @cargo.delete(item)
        return
      end
    end
    puts "Item not found"
  end

  def basket_capacity
    MAX_CARGO_ITEMS
  end

  def basket_remaining_capacity
    MAX_CARGO_ITEMS - @cargo.size
  end
end