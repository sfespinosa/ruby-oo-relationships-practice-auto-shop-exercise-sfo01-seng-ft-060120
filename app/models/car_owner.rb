class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select { |car| car.car_owner == self }
  end

  def mechanics
    self.cars.collect { |car| car.mechanic }
  end

  def self.all
    @@all
  end

  def self.average_number_of_cars
    car_total = 0
    self.all.each do |owner| 
      car_total += owner.cars.count
    end
    car_total.to_f / self.all.length
  end
end
