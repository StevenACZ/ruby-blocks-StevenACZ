# My All?

The objective is to build a `my_all?` method that mimic the functionality of the `all?` method.

You can find the all? documentation [here](https://ruby-doc.org/core-2.7.0/Enumerable.html#method-i-all-3F) and [here](https://rubyapi.org/2.7/o/s?q=all%3F)

About all? method:

> Passes each element of the collection to the given block. The method returns true if the block never returns false or nil

For example:

```ruby
numbers = [1, 2, 3, 4]
numbers.all? { |number| number.is_a?(Integer) } # => true
numbers.all? { |number| number < 4 } # => false
```

So, your `my_all?` method should behave in a similiar way:

```ruby
numbers = [1, 2, 3, 4]
my_all?(numbers) { |number| number.is_a?(Integer) } # => true
my_all?(numbers) { |number| number < 4 } # => false
```

The only difference is that, while the `all?` method is called directly over numbers (`numbers.all?`), your `my_all?` method expects an array as one of its parameters (`my_all?(numbers)`)

After that, both receive a block of code an do exactly the same.

If no block is passed to the method, it should return true when none of the collection members are false or nil, otherwise return false.
