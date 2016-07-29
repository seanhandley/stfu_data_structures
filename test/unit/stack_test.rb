require 'test_helper'

class StackTest < Minitest::Test
  def setup
    @items    = (1..100).to_a
    @stack    = DataStructures::Stack.new
  end

  def test_empty
    assert_equal   0, @stack.height
    assert_equal nil, @stack.pop
  end

  def test_push
    assert_equal   0, @stack.height
    @stack.push    1
    assert_equal   1, @stack.height
  end

  def test_pop
    @stack.push    1
    @stack.push    2
    assert_equal   2, @stack.pop
    assert_equal   1, @stack.height
  end

  def test_peek
    assert_equal nil, @stack.peek
    @stack.push    1
    assert_equal   1, @stack.peek
  end

  def test_height
    assert_equal 0, @stack.height
    @items.each {|i| @stack.push i}
    assert_equal @items.count, @stack.height
  end

  def test_filo
    @items.each {|i| @stack.push i}
    output = []
    while(el = @stack.pop)
      output << el
    end
    assert_equal @items.reverse, output
  end
end
