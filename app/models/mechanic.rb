class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def cars
    Car.all.select { |car| car.classification == self.specialty }
  end

  def car_owners
    self.cars.collect { |car| car.car_owner }
  end

  def car_owners_names
    self.car_owners.collect { |owner| owner.name }
  end

  def self.all
    @@all
  end
end
