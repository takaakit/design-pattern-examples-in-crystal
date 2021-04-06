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
    if changed_subject === @number_subject
      print "Bar chart: "
      (0..@number_subject.value - 1).each do |_|
        print "*"
      end
      puts ""
    end
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
