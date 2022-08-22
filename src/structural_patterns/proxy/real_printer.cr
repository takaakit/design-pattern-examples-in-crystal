# ˅
require "./printer"

# ˄

class RealPrinter < Printer
  # ˅

  # ˄

  @name : String

  def initialize(name : String)
    # ˅
    @name = name

    heavy_task("Creating an instance (#{name}) of the Printer")
    # ˄
  end

  def get_name : String
    # ˅
    return @name
    # ˄
  end

  def change_name(name : String)
    # ˅
    @name = name
    # ˄
  end

  # Display a content with the name
  def output(content : String)
    # ˅
    puts "----------"
    puts content
    puts "Printed by #{@name}"
    puts "----------"
    # ˄
  end

  # Heavy task (Please think so...)
  private def heavy_task(message : String)
    # ˅
    print message
    10.times do
      sleep(0.5)
      print "."
      STDOUT.flush
    end
    puts "Done."
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
