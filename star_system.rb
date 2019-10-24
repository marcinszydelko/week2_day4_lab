class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    @planets.map { |planet| planet.name }
  end

  def get_planet_by_name(name)
    @planets.find { |planet| planet.name == name }
  end

  def get_largest_planet
    result = 0
    biggest_diameter = 0
    @planets.each do |planet|
      if planet.diameter > biggest_diameter
        result = planet
        biggest_diameter = planet.diameter
      end
    end
    return result
  end

  def get_smallest_planet
    smallest_planet = @planets[0]
    @planets.each do |planet|
      if planet.diameter < smallest_planet.diameter
      smallest_planet = planet
      end
    end
    return smallest_planet
  end

  def get_planets_with_no_moons
    planet_no_moons = []
    @planets.each do |planet|
      if planet.number_of_moons == 0
        planet_no_moons << planet
      end
    end
    return planet_no_moons
  end

  def get_planets_with_more_moons(number)

    result = []

    @planets.each do |planet|
      if planet.number_of_moons > number
        result << planet.name
      end
    end
    return result
  end

  def get_number_of_planets_closer_than(distance)
    number_of_planets = 0
    @planets.each do |planet|
      if planet.distance_from_sun < distance
        number_of_planets += 1
      end
    end
    return number_of_planets
  end

  def get_total_number_of_moons
    number_of_moons = 0
    @planets.each do |planet|
      number_of_moons += planet.number_of_moons
    end
    return number_of_moons
  end
  



end
