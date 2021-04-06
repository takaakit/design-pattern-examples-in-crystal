# ˅
require "gobject/gtk/autorun"
require "./colleague"

# ˄

class ColleagueButton < Colleague
  # ˅

  # ˄

  # Flag indicating whether the button is pressed
  @is_pressed : Bool

  @button : Gtk::Button

  def initialize(button : Gtk::Button)
    # ˅
    super()
    @is_pressed = false
    @button = button
    @button.on_pressed { on_mouse_pressed }
    @button.on_released { on_mouse_released }
    # ˄
  end

  # Set enable/disable from the Mediator
  def set_activation(is_enable : Bool)
    # ˅
    @button.sensitive = is_enable
    # ˄
  end

  def is_pressed
    # ˅
    return @is_pressed
    # ˄
  end

  private def on_mouse_pressed
    # ˅
    @is_pressed = true
    # ˄
  end

  private def on_mouse_released
    # ˅
    @mediator.not_nil!.colleague_changed
    @is_pressed = false
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
