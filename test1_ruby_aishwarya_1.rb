# frozen_string_literal: true

# class NumberTest
class Test1RubyAishwarya1
  def self.input_n
    print('Enter N: ')
    num1 = gets.chomp
    Test1RubyAishwarya1.check_int(num1, 'n')
  end

  def self.input_k
    print('Enter K: ')
    num2 = gets.chomp
    Test1RubyAishwarya1.check_int(num2, 'k')
  end

  def self.check_int(num, key)
    Integer(num)
  rescue ArgumentError
    p "Please enter an integer #{key.upcase}"
    send("input_#{key}")
  end

  def self.test_input(num1, num2)
    num_array = num1.to_s.chars.map(&:to_i)
    num_array.each_index do |i|
      diff = [9 - num_array[i], num2].min
      num_array[i] += diff
      num2 -= diff
    end
    num_array.inject { |n, d| n * 10 + d }
  end

  def self.running_test(number1, number2)
    if number1.between?(100, 999) == false
      'Please enter value of N between 100 and 999'
    elsif number2.between?(0, 30) == false
      'Please enter value of K between 0 and 30'
    else
      puts test_input(number1, number2)
    end
  end

  def self.call
    num1 = Test1RubyAishwarya1.input_n
    num2 = Test1RubyAishwarya1.input_k
    running_test(num1, num2)
  end
end

Test1RubyAishwarya1.call