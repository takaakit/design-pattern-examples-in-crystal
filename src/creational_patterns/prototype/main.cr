require "./framework/manager"
require "./underline_display"
require "./frame_display"

# Display a string enclosed with a frame line, or drawn with an underline. The Client (Main)
# registers instances of the Display subclass in the Manager class. When necessary,
# the Manager class asks those registered instances to return a clone. The Client (Main)
# requires the returned clones to display.

manager = Manager.new

# Register instances of the "Display" subclass
emphasis_underline = UnderlineDisplay.new('-')
manager.register_display("emphasis", emphasis_underline)
highlight_frame = FrameDisplay.new(':')
manager.register_display("highlight", highlight_frame)
warning_frame = FrameDisplay.new('#')
manager.register_display("warning", warning_frame)

# Require to display
display_1 = manager.get_display("emphasis")
display_1.show("Nice to meet you.")
display_2 = manager.get_display("highlight")
display_2.show("Nice to meet you.")
display_3 = manager.get_display("warning")
display_3.show("Nice to meet you.")
