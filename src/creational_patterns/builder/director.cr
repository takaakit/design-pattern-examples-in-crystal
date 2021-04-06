# ˅
require "./builder"

# ˄

class Director
  # ˅

  # ˄

  @builder : Builder

  def initialize(builder : Builder)
    # ˅
    @builder = builder
    # ˄
  end

  # Construct a document
  def build
    # ˅
    @builder.create_title("Greeting")                                   # Title
    @builder.create_section("Morning and Afternoon")                    # Section
    @builder.create_items(["Good morning.", "Hello."])                  # Items
    @builder.create_section("Evening")                                  # Other section
    @builder.create_items(["Good evening.", "Good night.", "Goodbye."]) # Other items
    @builder.close
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
