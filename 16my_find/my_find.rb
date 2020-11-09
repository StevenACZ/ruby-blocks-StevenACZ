def my_find(array, &block)
  result = nil
  array.each do |item|
    if block_given? ? block.call(item) : item
      result = item
      break
    end
  end
  block_given? ? result : array.to_enum
end
