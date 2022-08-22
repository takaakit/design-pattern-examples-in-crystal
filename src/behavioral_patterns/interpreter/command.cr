# ˅
require "./node"
require "./repeat"
require "./action"

# ˄

class Command < Node
  # ˅

  # ˄

  @node : Node?

  def initialize
    # ˅
    @node = nil
    # ˄
  end

  def parse(context : Context)
    # ˅
    a_node : Node
    if context.get_token == "repeat"
      a_node = Repeat.new
      a_node.parse(context)
    else
      a_node = Action.new
      a_node.parse(context)
    end

    @node = a_node # Hold the parsed node
    # ˄
  end

  def to_s : String
    # ˅
    return "#{@node.to_s}"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
