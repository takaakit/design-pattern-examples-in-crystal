# ˅
require "./colleague_button"
require "./colleague_radio_button"
require "./colleague_text_field"
require "./mediator"

# ˄

class AppLogin < Mediator
  # ˅

  # ˄

  @radio_login : ColleagueRadioButton?

  @radio_guest : ColleagueRadioButton?

  @text_username : ColleagueTextField?

  @text_password : ColleagueTextField?

  @button_ok : ColleagueButton?

  @button_cancel : ColleagueButton?

  @window : Gtk::Window

  def initialize
    # ˅
    @radio_login = nil
    @radio_guest = nil
    @text_username = nil
    @text_password = nil
    @button_ok = nil
    @button_cancel = nil
    @window = Gtk::Window.new

    create_colleagues

    @radio_login.not_nil!.mediator = self
    @radio_guest.not_nil!.mediator = self
    @text_username.not_nil!.mediator = self
    @text_password.not_nil!.mediator = self
    @button_ok.not_nil!.mediator = self
    @button_cancel.not_nil!.mediator = self

    colleague_changed

    @window.show_all
    # ˄
  end

  # Change enable/disable of the Colleagues when notified from the Mediators.
  def colleague_changed
    # ˅
    if @button_ok.not_nil!.is_pressed || @button_cancel.not_nil!.is_pressed
      Gtk.main_quit
    else
      if @radio_guest.not_nil!.is_selected # Guest mode
        @text_username.not_nil!.set_activation(false)
        @text_password.not_nil!.set_activation(false)
        @button_ok.not_nil!.set_activation(true)
      else
        @text_username.not_nil!.set_activation(true)
        @text_password.not_nil!.set_activation(true)

        # Judge whether the changed Colleage is enabled or disabled
        if @text_username.not_nil!.is_empty == false && @text_password.not_nil!.is_empty == false
          @button_ok.not_nil!.set_activation(true)
        else
          @button_ok.not_nil!.set_activation(false)
        end
      end
    end
    # ˄
  end

  def create_colleagues
    # ˅
    @window.title = "Mediator Example"
    @window.connect("destroy", &->Gtk.main_quit)
    @window.border_width = 8

    gtk_radio_guest = Gtk::RadioButton.new_with_label(nil, "Guest")
    @radio_guest = ColleagueRadioButton.new(gtk_radio_guest)

    gtk_radio_login = Gtk::RadioButton.new_with_label_from_widget(gtk_radio_guest, "Login")
    @radio_login = ColleagueRadioButton.new(gtk_radio_login)

    radio_button_container = Gtk::Box.new :horizontal, spacing: 2
    radio_button_container.add(gtk_radio_guest)
    radio_button_container.add(gtk_radio_login)

    gtk_label_username = Gtk::Label.new "Username:"
    gtk_entry_username = Gtk::Entry.new
    @text_username = ColleagueTextField.new(gtk_entry_username)

    username_container = Gtk::Box.new(:horizontal, spacing: 2)
    username_container.pack_start(gtk_label_username, expand: true, fill: true, padding: 2)
    username_container.pack_start(gtk_entry_username, expand: true, fill: true, padding: 2)

    gtk_label_password = Gtk::Label.new "Password:"
    gtk_entry_password = Gtk::Entry.new
    gtk_entry_password.visibility = false
    @text_password = ColleagueTextField.new(gtk_entry_password)

    password_container = Gtk::Box.new(:horizontal, spacing: 2)
    password_container.pack_start(gtk_label_password, expand: true, fill: true, padding: 2)
    password_container.pack_start(gtk_entry_password, expand: true, fill: true, padding: 2)

    gtk_button_ok = Gtk::Button.new(label: "OK")
    @button_ok = ColleagueButton.new(gtk_button_ok)

    gtk_button_cancel = Gtk::Button.new(label: "Cancel")
    @button_cancel = ColleagueButton.new(gtk_button_cancel)

    button_container = Gtk::Box.new(:horizontal, spacing: 2)
    button_container.pack_start(gtk_button_ok, expand: true, fill: true, padding: 2)
    button_container.pack_start(gtk_button_cancel, expand: true, fill: true, padding: 2)

    root_container = Gtk::Box.new(:vertical, spacing: 4)
    root_container.add(radio_button_container)
    root_container.add(username_container)
    root_container.add(password_container)
    root_container.add(button_container)

    @window.add(root_container)
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
