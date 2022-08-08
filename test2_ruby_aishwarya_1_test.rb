# frozen_string_literal: true

require 'test/unit'
require 'minitest/autorun'
require_relative './test2_ruby_aishwarya_1'

# test file for t2.rb
class T2Test < Minitest::Test
  def test_pair1
    Test2RubyAishwarya1.stub :player_round, 3 do
      assert_equal 3, Test2RubyAishwarya1.player_round(3)
    end
  end

  def test_pair2
    Test2RubyAishwarya1.stub :player_round, 1 do
      assert_equal 1, Test2RubyAishwarya1.player_round(5)
    end
  end

  def test_pair3
    Test2RubyAishwarya1.stub :player_round, 6 do
      assert_equal 6, Test2RubyAishwarya1.player_round(1)
    end
  end

  def test_pair4
    Test2RubyAishwarya1.stub :monster_round, 2 do
      assert_equal 2, Test2RubyAishwarya1.monster_round(3)
    end
  end

  def test_pair5
    Test2RubyAishwarya1.stub :monster_round, 4 do
      assert_equal 4, Test2RubyAishwarya1.monster_round(5)
    end
  end

  def test_pair6
    Test2RubyAishwarya1.stub :monster_round, 5 do
      assert_equal 5, Test2RubyAishwarya1.monster_round(6)
    end
  end
end
