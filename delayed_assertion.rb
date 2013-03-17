class DelayedAssertion
  def initialize(subject)
    @subject = subject
  end

  def evaluate(operator)
    if operator.evaluate(@subject)
      return true
    else
      return AssertionError
    end
  end
end

class AssertionError < Exception
end

