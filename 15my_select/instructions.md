# My Select

The objective is to build a `my_select` method that mimic the functionality of the `select` method.

You can find the select documentation [here](https://ruby-doc.org/core-2.7.0/Enumerable.html#method-i-select) and [here](https://rubyapi.org/2.7/o/enumerable#method-i-select)

About select method:

> Returns an array containing all elements of enum (an array for example) for which the given block returns a true value.

For example:

```ruby
numbers = [1, 2, 3, 4, 5, 6]
numbers.select { |number| number.even? } # => [2, 4, 6]
numbers.select { |number| number.odd? } # => [1, 3, 5]
```

So, your `my_select` method should behave in a similiar way:

```ruby
numbers = [1, 2, 3, 4, 5, 6]
my_select(numbers) { |number| number.even? } # => [2, 4, 6]
my_select(numbers)  { |number| number.odd? } # => [1, 3, 5]
```

The only difference is that, while the `select` method is called directly over numbers (`numbers.select`), your `my_select` method expects an array as one of its parameters (`my_select(numbers)`)

After that, both receive a block of code an do exactly the same.

If no block is passed to the method, it should return an Enumarator object. Check the method `.to_enum` for more info.
