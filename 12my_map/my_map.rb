def my_map(array, &block)
  if block_given?
    new_arr = []
    array.each do |item|
      new_arr.push(yield item.to_i) 
    end
    new_arr
  else
    array.to_enum
  end
end

string_array = ["1", "2", "3", "4"]
double_int_array = my_map(string_array) { |string_num| string_num.to_i * 2 }
p double_int_array