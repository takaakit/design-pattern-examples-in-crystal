# ˅
require "./frame"

# ˄

class SideFrame < Frame
  # ˅

  # ˄

  # Decoration character
  @frame_char : Char

  def initialize(display : Display, frame_char : Char)
    # ˅
    super(display)
    @frame_char = frame_char
    # ˄
  end

  # Number of characters added left and right decoration characters
  def get_columns : Int32
    # ˅
    return 1 + @display.get_columns + 1
    # ˄
  end

  # Number of lines
  def get_rows : Int32
    # ˅
    return @display.get_rows
    # ˄
  end

  def get_line_text(row : Int32) : String
    # ˅
    return @frame_char + @display.get_line_text(row) + @frame_char
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
