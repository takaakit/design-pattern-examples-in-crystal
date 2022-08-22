require "./number_subject"
require "./digit_observer"
require "./bar_chart_observer"

# Observers observe a Subject object holding a numerical value and display the value.
# The display formats are digits and bar charts.

number_subject = NumberSubject.new
number_subject.attach(DigitObserver.new(number_subject))
number_subject.attach(BarChartObserver.new(number_subject))

random = Random.new
20.times do
  number_subject.value = random.rand(50)
  sleep(0.2)
end
