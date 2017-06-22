require "minitest/autorun"
require_relative "rocket"
require 'pry'

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

  def test_if_rocket_has_lifted_off

    #arrange
    rocket = Rocket.new
    rocket.flying=(true)

    #act
    can_lift_off = rocket.lift_off

    #assert
    assert can_lift_off == false

  end

  def test_to_land_rocket

    #arrange
    rocket = Rocket.new
    rocket.flying=(true)

    #act
    land_rocket = rocket.land

    #assert
    assert land_rocket == true

  end

  def test_for_rocket_already_landed

    #arrange
    rocket = Rocket.new

    #act
    land_rocket = rocket.land

    #assert
    assert land_rocket == false

  end

  def test_for_status_is_flying

    #arrange
    rocket = Rocket.new
    rocket.flying=(true)

    #act
    message = rocket.status

    #assert
    assert_equal(message, "Rocket #{rocket.name} is flying through the sky!")

  end

  def test_for_status_is_not_flying

    #arrange
    rocket = Rocket.new

    #act
    message = rocket.status

    #assert
    assert_equal(message, "Rocket #{rocket.name} is ready for lift off!")

  end

end
