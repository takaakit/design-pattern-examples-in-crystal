# ˅
require "gobject/gtk/autorun"
require "./colleague"

# ˄

class ColleagueRadioButton < Colleague
  # ˅

  # ˄

  @radio_button : Gtk::RadioButton

  def initialize(radio_button : Gtk::RadioButton)
    # ˅
    super()
    @radio_button = radio_button
    @radio_button.on_clicked { on_changed }
    # ˄
  end

  # Set enable/disable from the Mediator
  def set_activation(is_enable : Bool)
    # ˅
    @radio_button.sensitive = is_enable
    # ˄
  end

  def is_selected : Bool
    # ˅
    return @radio_button.active
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
