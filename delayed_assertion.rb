class DelayedAssertion
  def initialize(subject)
    @subject = subject
  end

  def ==(object)
    raise AssertionError unless @subject == object
  end 

  def be_true
    raise AssertionError unless @subject
  end

  def be_false
    raise AssertionError unless !@subject
  end
end

class AssertionError < Exception
end

