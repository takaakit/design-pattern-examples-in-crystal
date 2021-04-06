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
    (0..4).each do |i| # Repeat write 5 times
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
