require 'test_helper'

class QueueTest < Minitest::Test
  def setup
    @items    = (1..100).to_a
    @shuffled = @items.shuffle
    @queue    = DataStructures::Queue.new 
  end

  def test_empty
    assert_equal 0,   @queue.length
    assert_equal nil, @queue.dequeue
  end

  def test_enqueue
    assert_equal   0, @queue.length
    @queue.enqueue 1
    assert_equal   1, @queue.length
  end

  def test_dequeue
    @queue.enqueue 1
    @queue.enqueue 2
    assert_equal   1, @queue.dequeue
    assert_equal   1, @queue.length
  end

  def test_peek
    assert_equal nil, @queue.peek
    @queue.enqueue 1
    assert_equal 1, @queue.peek
  end

  def test_length
    assert_equal 0, @queue.length
    @items.each {|i| @queue.enqueue i}
    assert_equal @items.count, @queue.length
  end

  def test_fifo
    @shuffled.each {|i| @queue.enqueue i}
    output = []
    while(el = @queue.dequeue)
      output << el
    end
    assert_equal @shuffled, output
  end
end