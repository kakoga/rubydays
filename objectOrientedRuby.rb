# Object Oriented Car Challenge

# Story: As a programmer, I can make a vehicle.
# Task: Create a class called Vehicle, and create an object called myVehicle which is of class Vehicle.

# Story: As a programmer, I can make a car.
# Task: Create a class called Car, and create an object called myCar which is of class Car.

# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Task: Initialize the car to have four wheels, then create a method to return the number of wheels.

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Task: Make model year part of the initialization.

# Story: As a programmer, I can turn on and off the lights on a given vehicle.
# Task: Create method(s) to allow programmer to turn lights on and off.

# # Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.

garage = []


class Car
  def initialize(make, name, model_year)
    @name = name
    @wheels =  4
    @model_year = model_year
    @lights = false
    @speed = 0
    @make = make
  end

  def make
    @make
  end

  def name
    @name
  end

  def wheels
    @wheels
  end

  def model_year
    @model_year
  end

  # Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.
  # Tests:
  # vehicle = Vehicle.new(...)
  # vehicle.lightsOn? # should return false
  # vehicle.lightsOn = true
  # vehicle.lightsOn? # should return true
  # vehicle.lightsOn = false
  # vehicle.lightsOn? # should return false

  def lights

    @lights = !@lights
    if @lights
      p "The lights are on"
    else
      p "The lights are off"
    end

  end

  def speed
    puts @speed
  end

  # # Story: As a programmer, I can speed a car up.


  def accelerate
    p @speed += 1
  end


  # # Story: As a programmer, I can slow a car down to zero.

  def brake
    if @speed > 0
      p @speed -= 1
    end
  end
end




# Story: As a programmer, I can make a Tesla car.
# Task: Create an object called myTesla which is of class Tesla which inherits from class Car .

# # Story: As a programmer, I can speed my Teslas up by 10 per acceleration

# # Story: As a programmer, I can slow my Teslas down by 7 per braking.

class Tesla < Car
  def accelerate
    p @speed += 10
  end

  def brake
    if @speed - 7 < 0
      p @speed = 0
    elsif @speed >= 7
      p @speed -= 7
    end
  end

end
myTesla = Tesla.new("Tesla", "myTesla", 2016)
# garage.push(myTesla.name, myTesla.model_year)
garage.push(myTesla)
# garage.push(myTesla.name)
# garage.push(myTesla.model_year)
# myTesla.wheels
# myTesla.model_year
# myTesla.lights
# myTesla.speed
# myTesla.accelerate
# myTesla.brake
# myTesla.brake
# myTesla.brake

yourTesla = Tesla.new("Tesla", "yourTesla", 1900)
# garage.push(yourTesla.name, yourTesla.model_year)
garage.push(yourTesla)

# Story: As a programmer, I can make a Tata car.
# Task: Create an object called myTata which is of class Tata.

# # Story: As a programmer, I can speed my Tatas up by 2 per acceleration.

# # Story: As a programmer, I can slow my Tatas down by 1.25 per braking.

class Tata < Car
  def accelerate
    p @speed += 2
  end

  def brake
    if @speed - 1.25 < 0
      p @speed = 0
    elsif @speed >= 1.25
      p @speed -= 1.25
    end
  end
end

myTata = Tata.new("Tata", "myTata", 2007)
# garage.push(myTata.name, myTata.model_year)
garage.push(myTata)
# myTata.wheels
# myTata.model_year
# myTata.lights
# myTata.speed
# myTata.accelerate
# myTata.accelerate
# myTata.accelerate
# myTata.brake
# myTata.brake
# myTata.brake

yourTata = Tata.new("Tata", "yourTata", 1990)
# garage.push(yourTata.name, yourTata.model_year)
garage.push(yourTata)


# Story: As a programmer, I can make a Toyota car.
# Task: Create an object called myToyota which is of class Toyota.

# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.

# Story: As a programmer, I can slow my Toyotas down by 5 per braking.

class Toyota < Car
  def accelerate
    @speed += 7
  end

  def brake
    if @speed - 5 < 0
      p @speed = 0
    elsif @speed >= 5
      p @speed -= 5
    end
  end
end

myToyota = Toyota.new("Toyota", "myToyota", 2000)
# garage.push(myToyota.name, myToyota.model_year)
garage.push(myToyota)
# myToyota.wheels
# myToyota.model_year
# myToyota.lights
# myToyota.speed
# myToyota.accelerate
# myToyota.brake

yourToyota = Toyota.new("Toyota", "yourToyota", 1999)
# garage.push(yourToyota.name, yourToyota.model_year)
garage.push(yourToyota)


# p garage

# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
# Task: Create two of each vehicles, all from different model years, and put them into an Array.
# p garage


# Story: As a programmer, I can sort my collection of cars based on model year.

garage.sort_by {|x| puts x.model_year}

# Story: As a programmer, I can sort my collection of cars based on model.
# Task: Sort based on class name.

# garage.sort_by! {|x| puts x.make}

# Story: As a programmer, I can sort my collection of cars based on model and then year.
