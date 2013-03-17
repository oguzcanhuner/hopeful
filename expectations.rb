require "./delayed_assertion"

module Expectations
  def should(operator = nil)
    assertion = DelayedAssertion.new(self)
    if operator
      return assertion.evaluate(operator)
    else
      return assertion
    end
  end
end

