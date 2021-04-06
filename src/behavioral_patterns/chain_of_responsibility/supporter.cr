# ˅

# ˄

abstract class Supporter
  # ˅

  # ˄

  # Supporter name
  @name : String

  # Next supporter
  @next : Supporter?

  def initialize(name : String)
    # ˅
    @name = name
    @next = nil
    # ˄
  end

  # Trouble support
  # Troubles are sent around.
  def support(trouble : Trouble)
    # ˅
    if can_handle(trouble)
      supported(trouble)
    elsif @next.nil? == false
      @next.not_nil!.support(trouble)
    else
      unsupported(trouble)
    end
    # ˄
  end

  # Set a next supporter.
  def set_next(_next : Supporter) : Supporter
    # ˅
    @next = _next
    return @next.not_nil!
    # ˄
  end

  protected abstract def can_handle(trouble : Trouble) : Bool

  # Trouble was supported.
  private def supported(trouble : Trouble)
    # ˅
    puts "#{trouble.to_s} was handled by #{@name}."
    # ˄
  end

  # Trouble was unsupported.
  private def unsupported(trouble : Trouble)
    # ˅
    puts "#{trouble.to_s} was not handled."
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
