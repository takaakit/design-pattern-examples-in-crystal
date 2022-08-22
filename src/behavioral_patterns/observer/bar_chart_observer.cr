# ˅
require "./observer"

# ˄

# Display values as a bar chart.
class BarChartObserver < Observer
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
      puts "Bar chart: #{"*" * @number_subject.value}"
    end
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
