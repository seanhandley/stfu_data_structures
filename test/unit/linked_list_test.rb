require 'test_helper'

class LinkedListTest < Minitest::Test
  def setup
    @list  = DataStructures::LinkedList.new
  end

  def test_empty
    assert list_contents(@list).empty?
  end

  def test_append_one
    @list.append(1)
    assert_equal [1], list_contents(@list)
  end

  def test_append_one_and_two
    @list.append(1)
    @list.append(2)
    assert_equal [1,2], list_contents(@list)
  end

  def test_exists
    refute @list.exists? 1
    @list.append(1)
    @list.append(2)
    assert @list.exists? 1
    assert @list.exists? 2
    refute @list.exists? 3
  end

  def test_remove
    @list.append(1)
    @list.append(2)
    @list.append(3)
    @list.remove
    assert_equal [1,2], list_contents(@list)
  end

  private

  def list_contents(l)
    contains = []
    l.traverse -> (e) { contains << e }
    contains
  end
end