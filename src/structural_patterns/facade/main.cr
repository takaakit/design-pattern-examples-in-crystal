require "./page_creator"

# Create a simple homepage through a Facade (PageCreator). The Facade gets info from
# the DataLibrary and uses the info to create an HTML file.

PageCreator::INSTANCE.create_simple_homepage("emily@example.com", "Homepage.html")
