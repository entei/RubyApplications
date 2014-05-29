require 'test_helper'
require 'test/unit'
require 'test/unit/notify'

class ZombieTest < Test::Unit::TestCase
  def setup
    # runs before each test
    @zombie = Zombie.new
  end

  def test_zombie_is_zombie
    # 1_000_000.times do
      assert_instance_of(Zombie, @zombie, "Zombie should be zombie")
    # end
  end

  def test_zombie_needs
    assert_equal('brains', @zombie.needs, 'Zombie need brains')
  end

  def teardown
    # runs after each test
  end
end
