class DelayedAssertion
  def initialize(subject)
    @subject = subject
  end

  def ==(object)
   raise AssertionError unless @subject == object
    end 
  end

class AssertionError < Exception
end

