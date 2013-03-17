class DelayedAssertion
  def initialize(subject)
    @subject = subject
  end

  def evaluate(operator)
    if operator.evaluate(@subject)
      return true
    else
      raise AssertionError
    end
  end
end

class AssertionError < Exception
end

