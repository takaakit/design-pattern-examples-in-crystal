# ˅
require "./supporter"

# ˄

class SpecialSupporter < Supporter
  # ˅

  # ˄

  @target_id : Int32

  def initialize(name : String, target_id : Int32)
    # ˅
    super(name)
    @target_id = target_id
    # ˄
  end

  # Troubles with the specific ID are handled.
  protected def can_handle(trouble : Trouble) : Bool
    # ˅
    return trouble.id == @target_id
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
