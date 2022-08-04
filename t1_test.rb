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

  def test_pair11
    assert_equal 999, test_input(999, 9)
  end

  # def test_num1_not_given
  #   assert_equal 999, test_input(999, 9)
  # end

  #flunk 'Not done testing yet.'
end
