# ˅
require "gobject/gtk/autorun"
require "cairo-gobject/cairo"
require "./painting_target"

# ˄

class PaintingCanvas < PaintingTarget
  # ˅

  # ˄

  @painting_color : Gdk::RGBA

  # Radius of the painting point
  @point_radius : Float64

  @darea : Gtk::DrawingArea

  def initialize(darea : Gtk::DrawingArea)
    # ˅
    @painting_color = Gdk::RGBA.new(0.5, 1.0, 0.5, 1.0)
    @point_radius = 10.0
    @darea = darea

    # ˄
  end

  def paint(x : Int32, y : Int32)
    # ˅
    context = Gdk.cairo_create(@darea.window.not_nil!)
    context.set_source_rgba(@painting_color.red, @painting_color.green, @painting_color.blue, @painting_color.alpha)
    context.arc(x, y, @point_radius, 0, 2 * Math::PI)
    context.fill
    # ˄
  end

  def clear
    # ˅
    context = Gdk.cairo_create(@darea.window.not_nil!)
    context.set_source_rgb(1.0, 1.0, 1.0)
    context.rectangle(0, 0, @darea.window.not_nil!.width, @darea.window.not_nil!.height)
    context.fill
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
