require "minitest/autorun"
require_relative "my_map"

class MyMapTest < Minitest::Test
  def test_my_map_transform_input_array
    input = [1, 2, 3, 4, 5]
    double = proc { |e| e * 2 }
    to_string = proc { |e| e.to_s }
    say_hello = proc { |e| "Hello, I'm #{e} }" }

    assert_equal  input.map(&double),
                  my_map(input, &double),
                  "When input: #{input.inspect}, Block given: { |e| e * 2 }"
    assert_equal  input.map(&to_string),
                  my_map(input, &to_string),
                  "When input: #{input.inspect}, Block given: { |e| e.to_s }"
    assert_equal  input.map(&say_hello),
                  my_map(input, &say_hello),
                  "When input: #{input.inspect}, Block given: Hello, I'm \#{e} }"
  end

  def test_my_map_return_enumerator_when_no_block_given
    input = [1, 2, 3, 4, 5]

    assert_equal  input.map.class,
                  my_map(input).class,
                  "When input: #{input.inspect} and no block is given"
  end
end
