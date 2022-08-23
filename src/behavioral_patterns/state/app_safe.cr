# ˅
require "gobject/gtk/autorun"
require "./context"
require "./state"
require "./daytime_state"

# ˄

# Safe security system that the security status changes with time.
class AppSafe < Context
  # ˅

  # ˄

  # Current state
  @state : State

  @window : Gtk::Window

  # Current time
  @entry_time : Gtk::Entry

  # Display of security center
  @textview_message : Gtk::TextView

  @scrolled_window : Gtk::ScrolledWindow

  def initialize
    # ˅
    @state = DaytimeState::INSTANCE

    @window = Gtk::Window.new
    @window.title = "Command Example"
    @window.resize(400, 300)
    @window.connect("destroy", &->Gtk.main_quit)
    @window.border_width = 8

    time_container = Gtk::Box.new

    @entry_time = Gtk::Entry.new
    @entry_time.editable = false
    time_container.pack_start(@entry_time, expand: true, fill: true, padding: 2)

    @textview_message = Gtk::TextView.new
    @textview_message.hexpand = true
    @textview_message.vexpand = true
    @textview_message.editable = false

    @scrolled_window = Gtk::ScrolledWindow.new
    @scrolled_window.add(@textview_message)

    message_container = Gtk::Box.new
    message_container.pack_start(@scrolled_window, expand: true, fill: true, padding: 2)

    use_submit = Gtk::Button.new(label: "Use")
    use_submit.on_clicked { pressed_use_button }

    alarm_submit = Gtk::Button.new(label: "Alarm")
    alarm_submit.on_clicked { pressed_alarm_button }

    phone_submit = Gtk::Button.new(label: "Phone")
    phone_submit.on_clicked { pressed_phone_button }

    button_container = Gtk::Box.new(:horizontal, spacing: 2)
    button_container.pack_start(use_submit, expand: true, fill: true, padding: 2)
    button_container.pack_start(alarm_submit, expand: true, fill: true, padding: 2)
    button_container.pack_start(phone_submit, expand: true, fill: true, padding: 2)

    root_container = Gtk::Box.new(:vertical, spacing: 4)
    root_container.add(time_container)
    root_container.add(message_container)
    root_container.add(button_container)
    @window.add(root_container)

    # Advance one hour for every second of real time.
    hour = 0
    GLib.timeout(1.second) do
      set_time(hour) # Set the time
      hour += 1
      if hour >= 24
        hour = 0
      end
      true
    end

    @window.show_all
    # ˄
  end

  # Set time
  def set_time(hour : Int32)
    # ˅
    clock_string = "Current Time : "
    if hour < 10
      clock_string += "0#{hour.to_s}:00"
    else
      clock_string += "#{hour.to_s}:00"
    end
    puts clock_string
    @entry_time.text = clock_string
    @state.set_time(self, hour)
    # ˄
  end

  # Change state
  def change_state(state : State)
    # ˅
    puts "The state changed from #{@state.to_s} to #{state.to_s}"
    @state = state
    # ˄
  end

  # Call a security guard room
  def call_security_guards_room(msg : String)
    # ˅
    ending = Gtk::TextIter.new
    @textview_message.buffer.end_iter ending
    @textview_message.buffer.insert(ending, "call! #{msg}\n", -1)

    # Scroll to the bottom
    vadj = @scrolled_window.vadjustment
    vadj.value = vadj.upper
    # ˄
  end

  # Record security log
  def record_security_log(msg : String)
    # ˅
    ending = Gtk::TextIter.new
    @textview_message.buffer.end_iter ending
    @textview_message.buffer.insert(ending, "record ... #{msg}\n", -1)

    # Scroll to the bottom
    vadj = @scrolled_window.vadjustment
    vadj.value = vadj.upper
    # ˄
  end

  private def pressed_use_button
    # ˅
    @state.use(self)
    # ˄
  end

  private def pressed_alarm_button
    # ˅
    @state.alarm(self)
    # ˄
  end

  private def pressed_phone_button
    # ˅
    @state.phone(self)
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
