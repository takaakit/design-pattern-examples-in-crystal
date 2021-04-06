# ˅
require "./supporter"

# ˄

class MoodySupporter < Supporter
  # ˅

  # ˄

  def initialize(name : String)
    # ˅
    super
    # ˄
  end

  # Troubles with an odd ID are handled.
  protected def can_handle(trouble : Trouble) : Bool
    # ˅
    return trouble.id % 2 == 1
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
