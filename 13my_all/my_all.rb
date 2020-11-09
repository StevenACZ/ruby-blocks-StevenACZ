def my_all?(array, &block)
  result = true
  if block_given?
    array.each { |item| !block.call(item) && result = false }
  else
    array.each { |item| !item && result = false }
  end
  result
end

numbers = [1, 2, 3, 5]
new_arr = my_all?(numbers) { |number| number.is_a?(Integer) } # => true
p my_all?(numbers) { |number| number < 4 } # => false