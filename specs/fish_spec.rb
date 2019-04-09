require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class TestFish < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Alfred")
    @fish2 = Fish.new("Bruce")
  end

  def test_fish_has_a_name
    assert_equal("Alfred", @fish1.name)
  end

end
