require 'test_helper'

class ArrayTest < Minitest::Test
  def setup
    @array = DataStructures::Array.new
  end

  def test_empty
    assert_equal 0,    @array.count
    assert_equal "[]", @array.to_s
  end

  def test_push
    @array.push "banana"
    assert_equal "[\"banana\"]", @array.to_s
    @array.push "apple"
    assert_equal "[\"banana\", \"apple\"]", @array.to_s
  end

  def test_count
    assert_equal 0, @array.count
    @array.push "banana"
    assert_equal 1, @array.count
    @array.push "apple"
    assert_equal 2, @array.count
  end

  def test_delete
    @array.push   "banana"
    assert_equal  "[\"banana\"]", @array.to_s
    @array.push   "apple"
    @array.delete 3
    assert_equal  "[\"banana\", \"apple\"]", @array.to_s
    @array.delete 1
    assert_equal  "[\"banana\"]", @array.to_s
    @array.push   "apple"
    @array.delete 0
    assert_equal  "[\"apple\"]", @array.to_s
    @array.delete 0
    assert_equal  "[]", @array.to_s
    @array.delete 1
    assert_equal  "[]", @array.to_s
  end

  def test_fetch
    assert_equal nil, @array[0]
    assert_equal nil, @array[1]
    @array.push  "banana"
    @array.push  "apple"
    assert_equal "banana", @array[0]
    assert_equal "apple",  @array[1]
  end

  def test_set_element
    @array.push  "banana"
    @array.push  "apple"
    assert_equal  "[\"banana\", \"apple\"]", @array.to_s
    @array[0] = "mango"
    assert_equal  "[\"mango\", \"apple\"]", @array.to_s
    @array = DataStructures::Array.new
    @array[0] = "strawberry"
    @array[1] = "peach"
    @array[2] = "melon"
    assert_equal  "[\"strawberry\", \"peach\", \"melon\"]", @array.to_s
  end
end