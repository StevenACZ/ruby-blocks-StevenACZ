def my_select(array, &block)
  new_arr = []
  if block_given?
    array.each { |item| block.call(item) && new_arr.push(item) }
    new_arr
  else
    array.to_enum
  end
end
