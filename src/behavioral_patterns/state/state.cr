# ˅

# ˄

abstract class State
  # ˅

  # ˄

  abstract def set_time(context : Context, hour : Int32)

  abstract def use(context : Context)

  abstract def alarm(context : Context)

  abstract def phone(context : Context)

  abstract def to_s : String

  # ˅
  # ˄
end

# ˅
# ˄
