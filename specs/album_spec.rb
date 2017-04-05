require('minitest/autorun')
require('minitest/rg')
require_relative('../album.rb')

class AlbumTest < MiniTest::Test

  def setup()
    @sell_price = 10
    @buy_price = 5
  end

  def test_mark_up 
    mark_up = ((sell_price/buy_price) - 1) * 100
    assert_equal(mark_up, 100)
  end
  
end



