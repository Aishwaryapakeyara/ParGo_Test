# frozen_string_literal: true

def check_int(num)
  Integer(num)
rescue ArgumentError
  p 'Please enter an integer.'
  exit
end

def test_input(num1, num2)
  num_array = num1.to_s.chars.map(&:to_i)
  num_array.each_index do |i|
    diff = [9 - num_array[i], num2].min
    num_array[i] += diff
    num2 -= diff
  end
  num_array.inject { |n, d| n * 10 + d }
end

def run_testtt(number1, number2)
  if number1.between?(100, 999) == false
    p 'Please enter value of N between 100 and 999'
  elsif number2.between?(0, 30) == false
    p 'Please enter value of K between 0 and 30'
  else
    puts test_input(number1, number2)
  end
end

print('Enter N: ')
num1 = gets.chomp
num1 = check_int(num1)
print('Enter K: ')
num2 = gets.chomp
num2 = check_int(num2)

run_testtt(num1, num2)
