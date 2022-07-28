# ˅
require "./printer"
require "./real_printer"

# ˄

class ProxyPrinter < Printer
  # ˅

  # ˄

  @current_name : String

  # A printer that actually prints
  @real : RealPrinter?

  def initialize(name : String)
    # ˅
    @current_name = name
    @real = nil
    # ˄
  end

  def get_name : String
    # ˅
    if @real.nil? == false
      return @real.not_nil!.get_name()
    else
      return @current_name
    end
    # ˄
  end

  def change_name(name : String)
    # ˅
    if @real.nil? == false
      @real.not_nil!.change_name(name)
    end
    @current_name = name
    # ˄
  end

  def output(content : String)
    # ˅
    if @real.nil?
      @real = RealPrinter.new(@current_name)
    end
    @real.not_nil!.output(content)
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
