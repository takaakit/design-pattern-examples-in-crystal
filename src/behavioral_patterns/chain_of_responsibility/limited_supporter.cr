# ˅
require "./supporter"

# ˄

class LimitedSupporter < Supporter
  # ˅

  # ˄

  @limit_id : Int32

  def initialize(name : String, limit_id : Int32)
    # ˅
    super(name)
    @limit_id = limit_id
    # ˄
  end

  # Troubles with an ID below the limit are handled.
  protected def can_handle(trouble : Trouble) : Bool
    # ˅
    return trouble.id <= @limit_id
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
