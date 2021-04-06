# ˅
require "./observer"

# ˄

# An abstract class that generates numbers.
abstract class Subject
  # ˅

  # ˄

  @observers : Array(Observer)

  def initialize
    # ˅
    @observers = Array(Observer).new
    # ˄
  end

  def attach(observer : Observer)
    # ˅
    @observers.push(observer)
    # ˄
  end

  def detach(observer : Observer)
    # ˅
    @observers.delete(observer)
    # ˄
  end

  def notify_observers
    # ˅
    @observers.each do |observer|
      observer.update(self)
    end
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
