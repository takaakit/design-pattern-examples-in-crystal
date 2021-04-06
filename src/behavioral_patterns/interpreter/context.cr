# ˅

# ˄

# Analyze the syntax
class Context
  # ˅

  # ˄

  @array_text : Array(String)

  @current_index : Int32

  @array_size : Int32

  def initialize(text : String)
    # ˅
    @array_text = text.split
    @current_index = 0
    @array_size = @array_text.size
    # ˄
  end

  def next_token : String?
    # ˅
    if @current_index < @array_size
      pre_index = @current_index
      @current_index += 1
      return @array_text[pre_index]
    else
      return nil
    end
    # ˄
  end

  def get_token : String?
    # ˅
    return @array_text[@current_index]
    # ˄
  end

  def slide_token(token : String)
    # ˅
    if token != @array_text[@current_index]
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
