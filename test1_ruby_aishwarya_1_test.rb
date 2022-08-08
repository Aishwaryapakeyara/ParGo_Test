# frozen_string_literal: true

require 'minitest/autorun'
require_relative './test1_ruby_aishwarya_1'

# test file for t1.rb
class Test1RubyAishwarya1Test < Minitest::Test
  def test_pair1
    assert_equal 972, Test1RubyAishwarya1.test_input(512, 10)
  end

  def test_pair2
    assert_equal 591, Test1RubyAishwarya1.test_input(191, 4)
  end

  def test_pair3
    assert_equal 999, Test1RubyAishwarya1.test_input(285, 20)
  end

  def test_pair6
    assert_equal 999, Test1RubyAishwarya1.test_input(999, 3)
  end

  def test_pair7
    assert_equal 999, Test1RubyAishwarya1.test_input(999, 4)
  end

  def test_num1_negative
    assert_equal 'Please enter value of N between 100 and 999', Test1RubyAishwarya1.running_test(-543, 9)
  end

  def test_num1_below_the_range
    assert_equal 'Please enter value of N between 100 and 999', Test1RubyAishwarya1.running_test(43, 9)
  end

  def test_num1_above_the_range
    assert_equal 'Please enter value of N between 100 and 999', Test1RubyAishwarya1.running_test(4143, 9)
  end

  def test_num2_negative
    assert_equal 'Please enter value of K between 0 and 30', Test1RubyAishwarya1.running_test(514, -19)
  end

  def test_num2_out_of_range
    assert_equal 'Please enter value of K between 0 and 30', Test1RubyAishwarya1.running_test(453, 49)
  end
end
