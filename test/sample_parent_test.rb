require "test/unit"

class SampleParentTest < Test::Unit::TestCase
  def test_of_parent_class
    assert true
  end
  
  class SampleNestedChildTest < SampleParentTest
    def test_of_nested_child_class
      assert true
    end
  end
end
