require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')


class TestBear < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Alfred")
    @fish2 = Fish.new("Bruce")

    @river1 = River.new("Hudson", 1_000)

    belly_contents = []
    @bear1 = Bear.new("Bob", "Polar", belly_contents)
  end

  def test_bear_has_a_name
    assert_equal("Bob", @bear1.name)
  end

  def test_bear_has_type
    assert_equal("Polar", @bear1.type)
  end

  def test_bear_belly_contents
    assert_equal([],@bear1.belly_contents)
  end

  def test_bear_belly_contents_overtime
    @bear1.belly_contents = "Henry"
    assert_equal("Henry", @bear1.belly_contents)
  end

  def test_number_of_fish_in_bear_belly
    assert_equal(0,@bear1.number_of_fish_in_belly)
  end

  def test_add_fish_eaten_to_belly_from_river
    fish_in_belly = @bear1.number_of_fish_in_belly
    assert_equal(1_000, @river1.remove_fish(fish_in_belly))
    assert_equal([@fish1], @bear1.fish_eaten(@fish1))
  end

  def test_can_bear_roar
    assert_equal("Roar!", @bear1.roar)
  end
end
