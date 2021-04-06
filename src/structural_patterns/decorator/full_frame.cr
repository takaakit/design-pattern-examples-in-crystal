# ˅
require "./frame"

# ˄

class FullFrame < Frame
  # ˅

  # ˄

  def initialize(display : Display)
    # ˅
    super(display)
    # ˄
  end

  # Number of characters added left and right decoration characters
  def get_columns : Int32
    # ˅
    return 1 + @display.get_columns + 1
    # ˄
  end

  # Number of rows added the upper and lower decoration lines
  def get_rows : Int32
    # ˅
    return 1 + @display.get_rows + 1
    # ˄
  end

  def get_line_text(row : Int32) : String
    # ˅
    if row == 0
      return "##{create_line('-', @display.get_columns)}#" # Upper frame
    elsif row == @display.get_rows + 1
      return "##{create_line('-', @display.get_columns)}#" # Bottom frame
    else
      return "|#{@display.get_line_text(row - 1)}|" # Other
    end
    # ˄
  end

  private def create_line(ch : Char, size : Int32) : String
    # ˅
    buf = Array(Char).new
    (0..size - 1).each do |i|
      buf.push(ch)
    end
    return buf.join
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
