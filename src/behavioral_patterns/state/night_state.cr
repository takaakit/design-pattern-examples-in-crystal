# ˅
require "./state"
require "./daytime_state"

# ˄

class NightState < State
  # ˅

  # ˄

  INSTANCE = new

  private def initialize
    # ˅
    # ˄
  end

  def set_time(context : Context, hour : Int32)
    # ˅
    if 9 <= hour && hour < 17
      context.change_state(DaytimeState::INSTANCE)
    end
    # ˄
  end

  def use(context : Context)
    # ˅
    context.call_security_guards_room("Emergency: Use a safe at night!")
    # ˄
  end

  def alarm(context : Context)
    # ˅
    context.call_security_guards_room("Sound an emergency bell at night")
    # ˄
  end

  def phone(context : Context)
    # ˅
    context.record_security_log("Record a night call")
    # ˄
  end

  def to_s : String
    # ˅
    return "[Night]"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
