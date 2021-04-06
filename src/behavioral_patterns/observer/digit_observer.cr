# ˅
require "./observer"

# ˄

# Display values as a number.
class DigitObserver < Observer
  # ˅

  # ˄

  @number_subject : NumberSubject

  def initialize(number_subject : NumberSubject)
    # ˅
    @number_subject = number_subject
    # ˄
  end

  def update(changed_subject : Subject)
    # ˅
    if changed_subject === @number_subject
      puts "Digit    : #{@number_subject.value.to_s}"
    end
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
