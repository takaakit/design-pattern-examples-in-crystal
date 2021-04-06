# ˅
require "./node"
require "./context"

# ˄

# A node corresponding to "forward", "left", and "right".
class Action < Node
  # ˅

  # ˄

  @name : String?

  def initialize
    # ˅
    @name = nil
    # ˄
  end

  def parse(context : Context)
    # ˅
    current_token = context.get_token
    if current_token != "forward" && current_token != "right" && current_token != "left"
      abort("#{current_token} is unknown")
    end

    @name = current_token # Hold the current token as this action name

    context.slide_token(current_token)
    # ˄
  end

  def to_s : String
    # ˅
    return @name.to_s
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
