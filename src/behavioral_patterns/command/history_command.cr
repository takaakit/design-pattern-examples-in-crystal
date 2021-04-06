# ˅
require "./command"

# ˄

# Holder of the past commands
class HistoryCommand < Command
  # ˅

  # ˄

  # A set of past commands
  @past_commands : Array(Command)

  def initialize
    # ˅
    @past_commands = Array(Command).new

    # ˄
  end

  def execute
    # ˅
    @past_commands.each do |past_command|
      past_command.execute
    end
    # ˄
  end

  def add(cmd : Command)
    # ˅
    @past_commands.push(cmd)
    # ˄
  end

  # Delete the last command
  def undo
    # ˅
    if @past_commands.size != 0
      @past_commands.pop
    end
    # ˄
  end

  # Delete all past commands
  def clear
    # ˅
    @past_commands.clear
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
