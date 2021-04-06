# ˅
require "gobject/gtk/autorun"
require "./colleague"

# ˄

class ColleagueTextField < Colleague
  # ˅

  # ˄

  @text_field : Gtk::Entry

  def initialize(text_field : Gtk::Entry)
    # ˅
    super()
    @text_field = text_field
    @text_field.on_changed { on_changed }
    # ˄
  end

  # Set enable/disable from the Mediator
  def set_activation(is_enable : Bool)
    # ˅
    @text_field.sensitive = is_enable
    # ˄
  end

  def is_empty : Bool
    # ˅
    return @text_field.text.empty?
    # ˄
  end

  private def on_changed
    # ˅
    @mediator.not_nil!.colleague_changed
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
