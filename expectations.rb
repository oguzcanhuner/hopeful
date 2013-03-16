require "./delayed_assertion"

module Expectations
  def should
    DelayedAssertion.new(self)
  end
end

