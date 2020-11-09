# My Any?

The objective is to build a `my_any?` method that mimic the functionality of the `any?` method.

You can find the any? documentation [here](https://ruby-doc.org/core-2.7.0/Enumerable.html#method-i-any-3F) and [here](https://rubyapi.org/2.7/o/enumerable#method-i-any-3F)

About any? method:

> Passes each element of the collection to the given block. The method returns true if the block ever returns a value other than false or nil

For example:

```ruby
names = ["Diego", "Wenceslao", "Deyvi"]
names.any? { |name| name.length > 6 } # => true
names.any? { |name| name.length < 4 } # => false
```

So, your `my_any?` method should behave in a similiar way:

```ruby
names = ["Diego", "Wenceslao", "Deyvi"]
my_any?(names) { |name| name.length > 6 } # => true
my_any?(names)  { |name| name.length < 4 } # => false
```

The only difference is that, while the `any?` method is called directly over names (`names.any?`), your `my_any?` method expects an array as one of its parameters (`my_any?(names)`)

After that, both receive a block of code an do exactly the same.

If no block is passed to the method, it should return true if at least one of the collection members is not false or nil.
