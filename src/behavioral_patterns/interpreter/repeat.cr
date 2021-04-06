# ˅
require "./node"

# ˄

# A node corresponding to "repeat".
class Repeat < Node
  # ˅

  # ˄

  @number : Int32

  @command_list : Node?

  def initialize
    # ˅
    @number = 0
    @command_list = nil
    # ˄
  end

  def parse(context : Context)
    # ˅
    context.slide_token("repeat")

    @number = context.get_number
    context.slide_token(@number.to_s)

    a_command_list = CommandList.new
    a_command_list.parse(context)

    @command_list = a_command_list # Hold the parsed command list
    # ˄
  end

  def to_s : String
    # ˅
    return "repeat #{@number.to_s} #{@command_list.to_s}"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
