require "./print_message_display"

# Display the given string as follows
# ```
# -- Nice to meet you --
# ```
# or display it as follows.
# ```
# [[ Nice to meet you ]]
# ```

p = PrintMessageDisplay.new("Nice to meet you")
p.print_weak
p.print_strong
