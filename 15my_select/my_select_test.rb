require "minitest/autorun"
require_relative "my_select"

class MySelectTest < Minitest::Test
  def test_select_correct_values
    input = [1, 2, 3, 4, 5]
    greater_than_two = proc { |e| e > 2 }
    greater_than_four = proc { |e| e > 4 }
    less_than_two = proc { |e| e < 2 }

    assert_equal  input.select(&greater_than_two),
                  my_select(input, &greater_than_two),
                  "When input: #{input.inspect}, Block given: { |e| e > 2 }"
    assert_equal  input.select(&greater_than_four),
                  my_select(input, &greater_than_four),
                  "When input: #{input.inspect}, Block given: { |e| e > 4 }"
    assert_equal  input.select(&less_than_two),
                  my_select(input, &less_than_two),
                  "When input: #{input.inspect}, Block given: { |e| e < 2 }"
  end

  def test_return_empty_array_when_no_matches
    input = [0, 1, 2, 3]
    string = proc { |e| e.is_a?(String) }
    greater_than_four = proc { |e| e > 4 }

    assert_equal  input.select(&string),
                  my_select(input, &string),
                  "When input: #{input.inspect}, Block given: { |e| e.is_a?(String) }"
    assert_equal  input.select(&greater_than_four),
                  my_select(input, &greater_than_four),
                  "When input: #{input.inspect}, Block given: { |e| e > 4 }"
  end

  def test_return_enumerator_when_no_block_given
    input = [1, 2, 3, 4, 5]

    assert_equal  input.select.class,
                  my_select(input).class,
                  "When input: #{input.inspect} and no block is given"
  end
end
