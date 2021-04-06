# ˅
require "./command"
require "./painting_target"

# ˄

# Command to paint a single point
class PaintingCommand < Command
  # ˅

  # ˄

  # Painting position x
  @painting_pos_x : Int32

  # Painting position y
  @painting_pos_y : Int32

  @painting_target : PaintingTarget

  def initialize(painting_target : PaintingTarget, painting_pos_x : Int32, painting_pos_y : Int32)
    # ˅
    @painting_pos_x = painting_pos_x
    @painting_pos_y = painting_pos_y
    @painting_target = painting_target

    # ˄
  end

  def execute
    # ˅
    @painting_target.paint(@painting_pos_x, @painting_pos_y)
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
