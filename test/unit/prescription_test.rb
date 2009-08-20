require 'test_helper'

class PrescriptionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Prescription.new.valid?
  end
end
