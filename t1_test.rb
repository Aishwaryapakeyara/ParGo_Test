# frozen_string_literal: true

require 'test/unit'
require_relative './t1'

# test file for t1.rb
class T1Test < Test::Unit::TestCase
  def test_pair1
    assert_equal 972, test_input(512, 10)
  end

  def test_pair2
    assert_equal 591, test_input(191, 4)
  end

  def test_pair3
    assert_equal 999, test_input(285, 20)
  end

  def test_pair4
    assert_equal 999, test_input(999, 1)
  end

  def test_pair5
    assert_equal 999, test_input(999, 2)
  end

  def test_pair6
    assert_equal 999, test_input(999, 3)
  end

  def test_pair7
    assert_equal 999, test_input(999, 4)
  end

  def test_pair8
    assert_equal 999, test_input(999, 5)
  end

  def test_pair9
    assert_equal 999, test_input(999, 6)
  end

  def test_pair10
    assert_equal 999, test_input(999, 7)
  end

  def test_pair11
    assert_equal 999, test_input(999, 8)
  end

  def test_pair12
    assert_equal 999, test_input(999, 9)
  end

  def test_num1_negative
    assert_equal 'Please enter value of N between 100 and 999', run_testtt(-543, 9)
  end

  def test_num1_below_the_range
    assert_equal 'Please enter value of N between 100 and 999', run_testtt(43, 9)
  end

  def test_num1_above_the_range
    assert_equal 'Please enter value of N between 100 and 999', run_testtt(4143, 9)
  end

  def test_num1_not_given
    assert_equal 'Please enter an integer.', check_int('')
  end
  # def test_num2_out_of_range
  #   assert_equal 'Please enter value of k between 0 and 30', test_input(43, 78)
  # end

  # def test_num2_not_given
  #   assert_raise ArgumentError do

  #   end
  # end

  # def test_num1_not_given
  #   assert_not_nil('Please enter an integer between 100 and 999', )
end
