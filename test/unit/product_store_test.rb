require 'test_helper'

class ProductStoreTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ProductStore.new.valid?
  end
end
