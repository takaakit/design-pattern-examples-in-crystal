# ˅

# ˄

# Analyze the syntax
class Context
  # ˅

  # ˄

  @tokens : Array(String)

  @current_index : Int32

  def initialize(text : String)
    # ˅
    @tokens = text.split
    @current_index = 0
    # ˄
  end

  def next_token : String?
    # ˅
    if @current_index < @tokens.size
      current_token = @tokens[@current_index]
      @current_index += 1
      return current_token
    else
      return nil
    end
    # ˄
  end

  def get_token : String?
    # ˅
    return @tokens[@current_index]
    # ˄
  end

  def slide_token(token : String)
    # ˅
    if token != get_token
      abort("WARNING: #{token} is expected but #{get_token} was found.")
    end
    next_token
    # ˄
  end

  def get_number : Int32
    # ˅
    if get_token != nil && !get_token.match(/\D/)
      return get_token.not_nil!.to_i32
    else
      abort("WARNING: #{get_token.to_s}")
    end
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
