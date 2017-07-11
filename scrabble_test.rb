require 'minitest/autorun'
require_relative 'scrabble'


class ScrabbleTest < Minitest::Test

  def setup
    @name = Scrabble.new
  end

  def test_scrabble_class_exists
    assert_instance_of(Scrabble, @name)
  end

  def test_score_method_exists
    assert_respond_to(@name, :score)
  end

  def test_score_method_exepects_string_argument
    assert_send([@name, :score, 'hello'])
  end

  def test_score_method_returns_correct_value
    assert_equal(8, @name.score('hello'))
    assert_equal(14, @name.score('cabbage'))
  end

 def test_score_method_to_return_zero_if_argument_is_empty
   assert_equal(0, @name.score(''))
 end

 def test_score_method_to_return_zero_if_argument_is_nil
   assert_equal(0, @name.score(nil))
 end

end
