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

end
