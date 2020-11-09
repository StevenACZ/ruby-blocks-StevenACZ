# My Map

The objective is to build a `my_map` method that mimic the functionality of the `map` method.

You can find the map documentation [here](https://ruby-doc.org/core-2.7.2/Array.html#method-i-map) and [here](https://rubyapi.org/2.7/o/array#method-i-map)

About map method:

> Invokes block once for each element of self. Creates a new array containing the values returned by the block

For example:

```ruby
string_array = ["1", "2", "3", "4"]
double_int_array = string_array.map { |string_num| string_num.to_i * 2 }
double_int_array # => [2, 4, 6, 8]
```

So, your `my_map` method should behave in a similiar way:

```ruby
string_array = ["1", "2", "3", "4"]
double_int_array = my_map(string_array) { |string_num| string_num.to_i * 2 }
double_int_array # => [2, 4, 6, 8]
```

The only difference is that, while the `map` method is called directly over the string_array (`string_array.map`), your `my_map` method expects an array as one of its parameters (`my_map(string_array)`)

After that, both receive a block of code an do exactly the same.

If no block is passed to the method, it should return an Enumarator object. Check the method `.to_enum` for more info.
