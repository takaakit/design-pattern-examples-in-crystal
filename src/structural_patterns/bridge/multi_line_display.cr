# ˅
require "./display"

# ˄

class MultiLineDisplay < Display
  # ˅

  # ˄

  def initialize(impl : DisplayImpl)
    # ˅
    super(impl)
    # ˄
  end

  # Repeat display for the specified number of times
  def output_multiple(times : Int32)
    # ˅
    open
    times.times do
      write
    end
    close
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
