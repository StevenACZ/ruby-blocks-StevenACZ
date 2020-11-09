require "minitest/autorun"
require_relative "my_find"

class MyFindTest < Minitest::Test
  def test_find_when_element_exists
    input = [{ name: "Diego" }, { name: "Wences" }, { name: "Deyvi" }]
    name_diego = proc { |e| e[:name] == "Diego" }
    name_wences = proc { |e| e[:name] == "Wences" }
    name_deyvi = proc { |e| e[:name] == "Deyvi" }

    assert_equal  input.find(&name_diego),
                  my_find(input, &name_diego),
                  "When input: #{input.inspect}, Block given: { |e| e[:name] == 'Diego' }"
    assert_equal  input.find(&name_wences),
                  my_find(input, &name_wences),
                  "When input: #{input.inspect}, Block given: { |e| e[:name] == 'Wences' }"
    assert_equal  input.find(&name_deyvi),
                  my_find(input, &name_deyvi),
                  "When input: #{input.inspect}, Block given: { |e| e[:name] == 'Deyvi' }"
  end

  def test_return_nil_when_no_matches
    input = [{ name: "Diego" }, { name: "Wences" }, { name: "Deyvi" }]
    name_carlos = proc { |e| e[:name] == "Carlos" }

    assert_nil  my_find(input, &name_carlos),
                "When input: #{input.inspect}, Block given: { |e| e[:name] == 'Carlos' }"
  end

  def test_return_enumerator_when_no_block_given
    input = [1, 2, 3, 4, 5]

    assert_equal  input.find.class,
                  my_find(input).class,
                  "When input: #{input.inspect} and no block is given"
  end
end
