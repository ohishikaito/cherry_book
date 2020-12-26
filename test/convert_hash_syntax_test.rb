require 'minitest/autorun'
require './lib/convert_hash_syntax.rb'

class ComvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old = <<~TEXT
      {
        :name => 'Alice,
        :age=> 20,
        :gender =>  :female
      }
    TEXT
    expected = <<~TEXT
      {
        name: 'Alice,
        age: 20,
        gender: :female
      }
    TEXT
    p convert_hash_syntax(old)
    assert_equal expected, convert_hash_syntax(old)
  end
end
