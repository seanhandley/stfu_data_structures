require 'test_helper'

class HashTest < Minitest::Test
  def setup
    @hash = DataStructures::Hash.new
  end

  def test_empty
    assert_equal "{}", @hash.to_s
  end

  def test_set_pair
    @hash["fruit"] = "mango"
    assert_equal "{\"fruit\" => \"mango\"}", @hash.to_s
    @hash["animal"] = "baboon"
    assert_equal "{\"fruit\" => \"mango\", \"animal\" => \"baboon\"}", @hash.to_s
  end

  def test_fetch_pair
    assert_equal nil, @hash["fruit"]
    assert_equal nil, @hash["animal"]
    @hash["fruit"] = "mango"
    @hash["animal"] = "baboon"
    assert_equal "mango", @hash["fruit"]
    assert_equal "baboon", @hash["animal"]
  end

  def test_keys
    assert_equal [], @hash.keys
    @hash["fruit"]  = "mango"
    @hash["animal"] = "baboon"
    assert_equal ["fruit", "animal"], @hash.keys
  end

  def test_values
    assert_equal [], @hash.values
    @hash["fruit"]  = "mango"
    @hash["animal"] = "baboon"
    assert_equal ["mango", "baboon"], @hash.values
  end

  def test_delete
    @hash["fruit"]  = "mango"
    @hash["animal"] = "baboon"
    @hash.delete("fruit")
    assert_equal "{\"animal\" => \"baboon\"}", @hash.to_s
  end
end