module Matchers

  def be_true
    BeTrue.new
  end

  def be_false
    BeFalse.new
  end

  class BeTrue
    def evaluate(subject)
      !!subject
    end
  end

  class BeFalse
    def evaluate(subject)
      !subject
    end
  end
end


