# ˅

# ˄

abstract class Context
  # ˅

  # ˄

  # Set time
  abstract def set_time(hour : Int32)

  # Change state
  abstract def change_state(state : State)

  # Call a security guard room
  abstract def call_security_guards_room(msg : String)

  # Record security log
  abstract def record_security_log(msg : String)

  # ˅
  # ˄
end

# ˅
# ˄
