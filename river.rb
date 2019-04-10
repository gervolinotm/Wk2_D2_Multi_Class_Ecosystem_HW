class River

  attr_reader :name
  attr_accessor :number_of_fish

  def initialize(name, number_of_fish)
    @name = name
    @number_of_fish = number_of_fish
  end

  def remove_fish(fish_eaten)
    @number_of_fish -= fish_eaten
  end

  def mating_season
    return @number_of_fish += 100 if @number_of_fish >= 2
  end
end
