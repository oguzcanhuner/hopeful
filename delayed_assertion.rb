class DelayedAssertion
  def initialize(subject)
    @subject = subject
  end

  def ==(object)
   raise AssertionError unless @subject == object
  end 

  def AssertionError < Exception
  end
end
