# ˅
require "./state"
require "./night_state"

# ˄

class DaytimeState < State
  # ˅

  # ˄

  INSTANCE = new

  private def initialize
    # ˅
    # ˄
  end

  def set_time(context : Context, hour : Int32)
    # ˅
    if hour < 9 || 17 <= hour
      context.change_state(NightState::INSTANCE)
    end
    # ˄
  end

  def use(context : Context)
    # ˅
    context.record_security_log("Use a safe in the daytime")
    # ˄
  end

  def alarm(context : Context)
    # ˅
    context.call_security_guards_room("Sound an emergency bell in the daytime")
    # ˄
  end

  def phone(context : Context)
    # ˅
    context.call_security_guards_room("Make a normal call in the daytime")
    # ˄
  end

  def to_s : String
    # ˅
    return "[Daytime]"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
