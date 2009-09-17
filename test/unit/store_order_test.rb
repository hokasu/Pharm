require 'test_helper'

class StoreOrderTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert StoreOrder.new.valid?
  end
end
