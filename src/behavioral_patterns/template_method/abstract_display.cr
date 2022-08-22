# ˅

# ˄

abstract class AbstractDisplay
  # ˅

  # ˄

  abstract def open

  abstract def write

  abstract def close

  def output
    # ˅
    open()
    5.times do # Repeat write 5 times
      write()
    end
    close()
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
