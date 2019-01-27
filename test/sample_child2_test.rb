require 'test/unit'
require_relative 'sample_parent_test.rb'

class SampleChild2Test < SampleParentTest
  def test_of_child_class
    assert true
  end
end
