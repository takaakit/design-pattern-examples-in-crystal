# ˅

# ˄

class MessageDisplay
  # ˅

  # ˄

  @message : String

  def initialize(message : String)
    # ˅
    @message = message
    # ˄
  end

  def display_with_hyphens
    # ˅
    puts "-- #{@message} --"
    # ˄
  end

  def display_with_brackets
    # ˅
    puts "[[ #{@message} ]]"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
