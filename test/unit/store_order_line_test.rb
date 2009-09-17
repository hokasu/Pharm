require 'test_helper'

class StoreOrderLineTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert StoreOrderLine.new.valid?
  end
end
