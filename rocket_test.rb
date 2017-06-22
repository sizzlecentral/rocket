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







end
