print('Enter K: ')
num2 = gets.chomp!.to_i
print('Enter N: ')
num1 = gets.chomp!.to_i

def test_input(num1, num2)
  num_array = num1.to_s.chars.map(&:to_i)
  num_array.each_index do |i|
    diff = [9 - num_array[i], num2].min
    num_array[i] += diff
    num2 -= diff
  end
  num_array.inject { |n, d| n * 10 + d }
end

puts test_input(num1, num2)
