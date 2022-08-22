# ˅
require "./display_impl"

# ˄

class TextDisplayImpl < DisplayImpl
  # ˅

  # ˄

  # A string to display
  @text : String

  # A number of characters in bytes
  @width : Int32

  def initialize(text : String)
    # ˅
    @text = text
    @width = text.size
    # ˄
  end

  def impl_open
    # ˅
    print_line
    # ˄
  end

  def impl_write
    # ˅
    puts ":#{@text}:" # Enclose a text with "|" and display it.
    # ˄
  end

  def impl_close
    # ˅
    print_line
    # ˄
  end

  private def print_line
    # ˅
    print "#"          # Display "#" mark at the beginning of a frame.
    print "." * @width # Display "." for the number of "width".
    puts "#"           # Display "#" mark at the end of a frame.
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
