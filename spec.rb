def describe(description, &block)
  ExampleGroup.new(block).evaluate! 
end

class ExampleGroup
  def initialize(block)
    @block = block
    @number = 2
  end

  def evaluate!
    instance_eval(&@block)
  end

  def it(description, &block)
    block.call
  end
end

class Object
  def should
    DelayedAssertion.new(self)
  end
end

class DelayedAssertion
  def initialize(subject)
    @subject = subject
  end

  def ==(object)
   raise AssertionError unless @subject == object
  end 
end
