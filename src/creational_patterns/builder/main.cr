require "gobject/gtk/autorun"
require "file_utils"
require "./director"
require "./plain_text_builder"
require "./html_builder"

# Create documents in HTML format and text format. It is possible to create different documents
# in the same construction process.

window = Gtk::Window.new(title: "Choose 1 or 2", border_width: 10)
window.connect("destroy", &->Gtk.main_quit)

button_plain = Gtk::Button.new(label: "1: Create a plain text document")
button_plain.on_clicked do |button|
  plain_text_builder = PlainTextBuilder.new
  directory = Director.new(plain_text_builder)
  directory.build
  content = plain_text_builder.content
  puts content
  true
end
button_plain.connect("clicked", &->window.destroy)

button_html = Gtk::Button.new label: "2: Create an html file document"
button_html.on_clicked do |button|
  html_builder = HTMLBuilder.new
  directory = Director.new(html_builder)
  directory.build
  file_name = html_builder.file_name
  puts "#{file_name} has been created."
  puts "Output File: #{FileUtils.pwd}/#{file_name}"
  true
end
button_html.connect("clicked", &->window.destroy)

root_container = Gtk::Box.new(:vertical, spacing: 2)
root_container.pack_start(button_plain, expand: true, fill: true, padding: 2)
root_container.pack_start(button_html, expand: true, fill: true, padding: 2)
window.add(root_container)

window.show_all
