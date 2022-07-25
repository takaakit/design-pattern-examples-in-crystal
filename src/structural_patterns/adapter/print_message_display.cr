# ˅
require "./message_display"
require "./print"

# ˄

# Adapt the MessageDisplay interface to the Print interface.
class PrintMessageDisplay < MessageDisplay
  include Print

  # ˅

  # ˄

  def initialize(message : String)
    # ˅
    super(message)
    # ˄
  end

  def print_weak
    # ˅
    display_with_hyphens
    # ˄
  end

  def print_strong
    # ˅
    display_with_brackets
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
