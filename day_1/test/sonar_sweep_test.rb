# frozen_string_literal: true

require 'test/unit'
require './day_1/lib/sonar_sweep'

class SonarSweepTest < Test::Unit::TestCase
  def test_depth_change
    assert_equal('decreased', check_depth_change(199, 189))
    assert_equal('increased', check_depth_change(220, 301))
    assert_equal('no change', check_depth_change(201, 201))
  end

  def check_depth_change(num1, num2)
    return 'decreased' if num1 > num2
    return 'increased' if num1 < num2
    return 'no change' if num1 == num2
  end
end
