require "minitest/autorun"
require_relative "my_all"

class MyAllTest < Minitest::Test
  def test_true_when_all_are_true
    input = [1, 2, 3, 4, 5]
    less_than_ten = proc { |e| e < 10 }
    greater_than_zero = proc { |e| e.positive? }
    integers = proc { |e| e.is_a?(Integer) }

    assert_equal  input.all?(&less_than_ten),
                  my_all?(input, &less_than_ten),
                  "When input: #{input.inspect}, Block given: { |e| e < 10 }"
    assert_equal  input.all?(&greater_than_zero),
                  my_all?(input, &greater_than_zero),
                  "When input: #{input.inspect}, Block given: { |e| e.positive? }"
    assert_equal  input.all?(&integers),
                  my_all?(input, &integers),
                  "When input: #{input.inspect}, Block given: { |e| e.is_a?(Integer) }"
  end

  def test_false_when_any_is_false
    input = [0, 1, 2, 3, 4, 5, 20]
    less_than_ten = proc { |e| e < 10 }
    greater_than_zero = proc { |e| e.positive? }

    assert_equal  input.all?(&less_than_ten),
                  my_all?(input, &less_than_ten),
                  "When input: #{input.inspect}, Block given: { |e| e < 10 }"
    assert_equal  input.all?(&greater_than_zero),
                  my_all?(input, &greater_than_zero),
                  "When input: #{input.inspect}, Block given: { |e| e.positive? }"
  end

  def test_return_true_when_no_block_given_and_all_members_are_truthy
    input = [1, 2, 3, 4, 5]

    assert_equal  input.all?,
                  my_all?(input),
                  "When input: #{input.inspect} and no block is given"
  end

  def test_return_false_when_no_block_given_and_one_member_is_false
    input = [1, 2, false, 4, 5]

    assert_equal  input.all?,
                  my_all?(input),
                  "When input: #{input.inspect} and no block is given"
  end

  def test_return_false_when_no_block_given_and_one_member_is_nil
    input = [1, 2, nil, 4, 5]

    assert_equal  input.all?,
                  my_all?(input),
                  "When input: #{input.inspect} and no block is given"
  end
end
