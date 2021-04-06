# ˅
require "./display"

# ˄

class Manager
  # ˅

  # ˄

  @display : Hash(String, Display)

  def initialize
    # ˅
    @display = Hash(String, Display).new
    # ˄
  end

  def register_display(display_name : String, display : Display)
    # ˅
    @display[display_name] = display
    # ˄
  end

  def get_display(display_name : String) : Display
    # ˅
    d = @display[display_name]
    return d.clone
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
