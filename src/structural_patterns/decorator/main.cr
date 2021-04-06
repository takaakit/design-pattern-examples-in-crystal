require "./message_display"
require "./side_frame"
require "./full_frame"

# Display a string with decorative frames. The frames can be combined arbitrarily.

display_a = MessageDisplay.new("Nice to meet you.")
display_a.show

display_b = SideFrame.new(MessageDisplay.new("Nice to meet you."), '!')
display_b.show

display_c = FullFrame.new(SideFrame.new(MessageDisplay.new("Nice to meet you."), '!'))
display_c.show
