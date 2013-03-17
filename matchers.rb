require "pry"

module Matchers

  def be_true
    BeTrue.new
  end

  class BeTrue
    def evaluate(subject)
      !!subject
    end
  end
end


