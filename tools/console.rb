require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

harry = CarOwner.new("Harry")
ron = CarOwner.new("Ron")
hermione = CarOwner.new("Hermione")

fred = Mechanic.new("Fred", "antique")
george = Mechanic.new("George", "exotic")
ginny = Mechanic.new("Ginny", "clunker")

honda = Car.new("Honda", "Civic", "clunker", harry, ginny)
toyota = Car.new("Toyota", "Highlander", "antique", ron, fred)
bugatti = Car.new("Bugatti", "Chiron", "exotic", hermione, george)
acura = Car.new("Acura", "ILX", "exotic", ron, george)
nissan = Car.new("Nissan", "Sentra", "clunker", ron, ginny)


binding.pry
