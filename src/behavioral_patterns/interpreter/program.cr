# ˅
require "./node"
require "./command_list"

# ˄

# A node corresponding to "program".
class Program < Node
  # ˅

  # ˄

  @command_list : Node?

  def initialize
    # ˅
    @command_list = nil
    # ˄
  end

  def parse(context : Context)
    # ˅
    context.slide_token("program")

    a_command_list = CommandList.new
    a_command_list.not_nil!.parse(context)

    @command_list = a_command_list # Hold the parsed command list
    # ˄
  end

  def to_s : String
    # ˅
    return "[program #{@command_list.to_s}]"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
