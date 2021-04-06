# ˅
require "./supporter"

# ˄

class LazySupporter < Supporter
  # ˅

  # ˄

  def initialize(name : String)
    # ˅
    super(name)
    # ˄
  end

  # No troubles are handled.
  protected def can_handle(trouble : Trouble) : Bool
    # ˅
    return false
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
