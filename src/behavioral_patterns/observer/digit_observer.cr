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
    # Before processing, it checks to make sure the changed subject is the subject held.
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
