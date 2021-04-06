# ˅
require "./history_command"
require "./painting_command"
require "./painting_canvas"

# ˄

class AppMain
  # ˅

  # ˄

  # Painting history
  @history : HistoryCommand

  @canvas : PaintingCanvas?

  @clear_button : Gtk::Button?

  @undo_button : Gtk::Button?

  @window : Gtk::Window

  def initialize
    # ˅
    @history = HistoryCommand.new
    @canvas = nil
    @undo_button = nil
    @clear_button = nil
    @window = Gtk::Window.new
    create_widgets
    @window.show_all
    # ˄
  end

  private def create_widgets
    # ˅
    @window.title = "Command Example"
    @window.resize(600, 500)
    @window.connect("destroy", &->Gtk.main_quit)

    event_box = Gtk::EventBox.new
    event_box.hexpand = true
    event_box.vexpand = true
    darea = Gtk::DrawingArea.new
    darea.connect("draw", &->clear)
    event_box.add(darea)
    @canvas = PaintingCanvas.new(darea)

    event_box.on_motion_notify_event do |widget, event|
      on_dragged(event.x.to_i, event.y.to_i)
      true
    end

    @undo_button = Gtk::Button.new
    @undo_button.not_nil!.label = "Undo"
    @undo_button.not_nil!.on_clicked { undo }

    @clear_button = Gtk::Button.new
    @clear_button.not_nil!.label = "Clear"
    @clear_button.not_nil!.on_clicked { clear }

    button_container = Gtk::Box.new(:horizontal, spacing: 2)
    button_container.pack_start(@undo_button.not_nil!, expand: true, fill: true, padding: 2)
    button_container.pack_start(@clear_button.not_nil!, expand: true, fill: true, padding: 2)

    root_container = Gtk::Box.new(:vertical, spacing: 0)
    root_container.add(event_box)
    root_container.add(button_container)

    @window.add(root_container)
    # ˄
  end

  private def on_dragged(x : Int32, y : Int32)
    # ˅
    painting_command = PaintingCommand.new(@canvas.not_nil!, x, y)
    @history.add(painting_command)
    painting_command.execute
    # ˄
  end

  private def undo
    # ˅
    @canvas.not_nil!.clear
    @history.undo
    @history.execute
    # ˄
  end

  private def clear
    # ˅
    @canvas.not_nil!.clear
    @history.clear
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
