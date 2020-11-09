# My Find

The objective is to build a `my_find` method that mimic the functionality of the `find` method.

You can find the find (🙃) documentation [here](https://ruby-doc.org/core-2.7.0/Enumerable.html#method-i-find) and [here](https://rubyapi.org/2.7/o/enumerable#method-i-find)

About find method:

> Passes each entry in enum (the array) to block. Returns the first for which block is not false. If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.

For this example you should discard the `calls ifnone` part and return `nil` when no object matches.

For example:

```ruby
numbers = [1, 2, 3, 4, 5, 6]
numbers.find { |number| number.even? } # => 2
numbers.find { |number| number.odd? } # => 1
numbers.find { |number| number > 10 } # => nil
```

So, your `my_find` method should behave in a similiar way:

```ruby
numbers = [1, 2, 3, 4, 5, 6]
my_find(numbers) { |number| number.even? } # => 2
my_find(numbers) { |number| number.odd? } # => 1
my_find(numbers) { |number| number > 10 } # => nil
```

The only difference is that, while the `find` method is called directly over numbers (`numbers.find`), your `my_find` method expects an array as one of its parameters (`my_find(numbers)`)

After that, both receive a block of code an do exactly the same.

If no block is passed to the method, it should return an Enumarator object. Check the method `.to_enum` for more info.
