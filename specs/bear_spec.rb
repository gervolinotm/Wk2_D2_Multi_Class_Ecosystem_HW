require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')

class TestBear < MiniTest::Test

  def setup()
    empty_belly = []
    @bear1 = Bear.new("Bob", "Polar", empty_belly)
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


end
