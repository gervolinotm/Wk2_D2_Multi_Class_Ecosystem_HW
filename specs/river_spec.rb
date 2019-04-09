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

end
