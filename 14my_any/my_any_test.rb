require "minitest/autorun"
require_relative "my_any"

class MyAnyTest < Minitest::Test
  def test_true_anyone_is_true
    input = [1, 2, "3", 4, 5]
    string = proc { |e| e.is_a?(String) }
    greater_than_four = proc { |e| e.to_i > 4 }
    less_than_three = proc { |e| e.to_i < 3 }

    assert_equal  input.any?(&string),
                  my_any?(input, &string),
                  "When input: #{input.inspect}, Block given: { |e| e.is_a?(String) }"
    assert_equal  input.any?(&greater_than_four),
                  my_any?(input, &greater_than_four),
                  "When input: #{input.inspect}, Block given: { |e| e.to_i > 4 }"
    assert_equal  input.any?(&less_than_three),
                  my_any?(input, &less_than_three),
                  "When input: #{input.inspect}, Block given: { |e| e.to_i < 3 }"
  end

  def test_false_when_none_is_true
    input = [0, 1, 2, 3]
    string = proc { |e| e.is_a?(String) }
    greater_than_four = proc { |e| e.to_i > 4 }

    assert_equal  input.any?(&string),
                  my_any?(input, &string),
                  "When input: #{input.inspect}, Block given: { |e| e.is_a?(String) }"
    assert_equal  input.any?(&greater_than_four),
                  my_any?(input, &greater_than_four),
                  "When input: #{input.inspect}, Block given: { |e| e.to_i > 4 }"
  end

  def test_return_true_when_no_block_given_and_one_member_is_truthy
    input = [nil, false, "Hi!"]

    assert_equal  input.any?,
                  my_any?(input),
                  "When input: #{input.inspect} and no block is given"
  end

  def test_return_false_when_no_block_given_and_all_elements_are_falsy
    input = [false, nil]

    assert_equal  input.any?,
                  my_any?(input),
                  "When input: #{input.inspect} and no block is given"
  end
end
