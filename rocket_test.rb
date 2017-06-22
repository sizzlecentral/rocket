require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def test_name_returns_random_name

    #arrange
    rocket = Rocket.new

    #act
    name = rocket.name

    #assert
    assert name != nil

  end

  def test_name_returns_chosen_name

    #arrange
    rocket = Rocket.new

    #act
    name = rocket.name=('Bob')

    #assert
    assert_equal('Bob', name)

  end

  def test_colour_returns_random_colour

    #arrange
    rocket = Rocket.new

    #act
    colour = rocket.colour

    #assert
    assert colour != nil

  end

  def test_colour_returns_chosen_colour

    #arrange
    rocket = Rocket.new

    #act
    colour = rocket.colour=('Blue')

    #assert
    assert_equal(colour, 'Blue')

  end

  def test_rocket_default_not_flying

    #arrange
    rocket = Rocket.new

    #act
    aloft = rocket.flying?

    #assert
    assert aloft == false

  end

  def test_if_rocket_has_not_lifted_off

    #arrange
    rocket = Rocket.new

    #act
    grounded = rocket.lift_off

    #assert
    assert grounded == true 

  end













end
