require 'minitest/autorun'
require_relative 'scrabble'


class ScrabbleTest < Minitest::Test

  def test_scrabble_class_exists
    @name = Scrabble.new
    assert_instance_of(Scrabble, @name)
  end

  def test_score_method_exists
    @name = Scrabble.new
    assert_respond_to(@name, :score)
  end

end
