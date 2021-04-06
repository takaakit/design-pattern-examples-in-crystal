# ˅
require "./display"

# ˄

class MessageDisplay < Display
  # ˅

  # ˄

  # Message to be displayed
  @message : String

  def initialize(message : String)
    # ˅
    @message = message
    # ˄
  end

  # Number of characters
  def get_columns : Int32
    # ˅
    return @message.size
    # ˄
  end

  # The number of rows is 1
  def get_rows : Int32
    # ˅
    return 1
    # ˄
  end

  def get_line_text(row : Int32) : String
    # ˅
    if row == 0
      return @message
    else
      return ""
    end
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
