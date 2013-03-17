require 'test/unit'
require './spec.rb'

class TestDescribe < Test::Unit::TestCase
  def test_that_it_can_pass
    describe "some test" do
      it "has some property" do
      end
    end
  end

  def test_that_it_can_fail
    assert_raise(IndexError) do
      describe "some failing test" do
        it "fails" do
          raise IndexError
        end
      end
    end
  end
end

class TestAssertion < Test::Unit::TestCase
  def test_that_equals_can_pass
    2.should == 2
  end

  def test_that_equals_can_fail
    assert_raise(AssertionError) do
      2.should == 3
    end
  end

  def test_be_true_passes
    true.should.be_true
  end

  def test_be_true_fails
    assert_raise(AssertionError) do
      false.should.be_true
    end
  end

  def test_be_false_passes
    false.should.be_false
  end

  def test_be_false_fails
    assert_raise(AssertionError) do
      true.should.be_false
    end
  end

end
