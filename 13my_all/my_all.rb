def my_all?(array, &block)
  result = true
  if block_given?
    array.each { |item| !block.call(item) && result = false }
  else
    array.each { |item| !item && result = false }
  end
  result
end
