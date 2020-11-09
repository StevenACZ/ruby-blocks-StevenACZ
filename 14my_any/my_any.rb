def my_any?(array, &block)
  result = false
  if block_given?
    array.each { |item| block.call(item) && result = true }
  else
    array.each { |item| item && result = true }
  end
  result
end
