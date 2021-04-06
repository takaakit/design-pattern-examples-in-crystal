require "gobject/gtk/autorun"
require "./factory/factory"
require "./list_factory/list_factory"
require "./table_factory/table_factory"

# Create a hierarchical link collection as an HTML file. It can be created in either tabular or list format.

window = Gtk::Window.new(title: "Choose 1 or 2", border_width: 10)
window.connect("destroy", &->Gtk.main_quit)

button_1 = Gtk::Button.new(label: "1: Create an HTML file by using ListFactory")
button_1.on_clicked do |button|
  create(ListFactory.new)
  true
end
button_1.connect("clicked", &->window.destroy)

button_2 = Gtk::Button.new label: "2: Create an HTML file by using TableFactory"
button_2.on_clicked do |button|
  create(TableFactory.new)
  true
end
button_2.connect("clicked", &->window.destroy)

root_container = Gtk::Box.new(:vertical, spacing: 2)
root_container.pack_start(button_1, expand: true, fill: true, padding: 2)
root_container.pack_start(button_2, expand: true, fill: true, padding: 2)
window.add(root_container)

window.show_all

def create(factory : Factory)
  washington_post = factory.create_link("The Washington Post", "https://www.washingtonpost.com/")
  new_york_times = factory.create_link("The NewYork Times", "https://www.nytimes.com/")
  financial_times = factory.create_link("The Financial Times", "https://www.ft.com/")

  newspaper = factory.create_data("Newspaper")
  newspaper.add(washington_post)
  newspaper.add(new_york_times)
  newspaper.add(financial_times)

  yahoo = factory.create_link("Yahoo!", "https://www.yahoo.com/")
  google = factory.create_link("Google", "https://www.google.com/")

  search_engine = factory.create_data("Search engine")
  search_engine.add(yahoo)
  search_engine.add(google)

  link_page = factory.create_page("LinkPage", "James Smith")
  link_page.add(newspaper)
  link_page.add(search_engine)

  link_page.output
end
