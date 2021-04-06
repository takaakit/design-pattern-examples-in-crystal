require "gobject/gtk/autorun"
require "./large_size_string"

# Display a string consisting of large characters (0-9 digits only).
# Large character objects are not created until they are needed.
# And the created objects are reused.
#
# Example Output
# -----
# Please enter digits (ex. 1212123): 123
#
#      ####
#       ###
#       ###
#       ###
#       ###
#       ###
#     #######
#
#
#
#    ########
#          ###
#          ###
#    ########
#   #
#   #
#   ##########
#
#
#
#    ########
#          ###
#          ###
#    ########
#          ###
#   #      ###
#    ########

window = Gtk::Window.new
window.title = "Input Dialog"
window.connect("destroy", &->Gtk.main_quit)
window.border_width = 10

label = Gtk::Label.new("Please enter digits (ex. 1212123):")
entry = Gtk::Entry.new
button_ok = Gtk::Button.new label: "OK"
button_ok.on_clicked do |button|
  lss = LargeSizeString.new(entry.text)
  lss.display
  true
end
button_ok.connect("clicked", &->window.destroy)

root_container = Gtk::Box.new :vertical, spacing: 2
root_container.pack_start(label, expand: true, fill: true, padding: 2)
root_container.pack_start(entry, expand: true, fill: true, padding: 2)
root_container.pack_start(button_ok, expand: true, fill: true, padding: 2)
window.add(root_container)

window.show_all
