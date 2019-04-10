class Bear

  attr_reader :name, :type
  attr_accessor :belly_contents

  def initialize(name, type, belly_contents)
    @name = name
    @type = type
    @belly_contents = belly_contents
  end

  def number_of_fish_in_belly
    @belly_contents.count
  end

  def fish_eaten(fish)
    @belly_contents.push(fish)
  end

  def roar
    return "Roar!"
  end
end
