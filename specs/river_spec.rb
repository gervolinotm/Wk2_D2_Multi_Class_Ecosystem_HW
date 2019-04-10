require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')

class TestRiver < MiniTest::Test

  def setup()
    @river1 = River.new("Hudson", 1_000)
    @river2 = River.new("Nile", 30_000)
  end

  def test_river_has_a_name
    assert_equal("Hudson", @river1.name)
  end

  def test_river_has_a_certain_number_of_fish
    assert_equal(30_000, @river2.number_of_fish)
  end

  def test_remove_fish_from_the_river
    remove_fish = @river1.remove_fish(2)
    assert_equal(998, remove_fish)
  end

  def test_fish_mating_season
    assert_equal(1100, @river1.mating_season)
  end
end
