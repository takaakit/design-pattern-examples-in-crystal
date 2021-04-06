require "./program"
require "./context"

# An interpreter for mini language to operate radio controlled car. It parses the following syntax
# composed of "forward", "left", "right", and "repeat" commands:
# ```
# <program>      ::= program <command list>
# <command list> ::= <command>* end
# <command>      ::= <repeat> | <action>
# <repeat>       ::= repeat <number> <command list>
# <action>       ::= forward | right | left
# <number>       ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
# ```
# ___
# Examples before and after syntax analysis.
#
# Ex.1
# ```
# Before parsing : program end
# After parsing  : [program []]
# ```
#
# Ex.2
# ```
# Before parsing : program forward right left end
# After parsing  : [program [forward, right, left]]
# ```
#
# Ex.3
# ```
# Before parsing : program repeat 4 forward right end end
# After parsing  : [program [repeat 4 [forward, right]]]
# ```

File.open(File.dirname(__FILE__) + "/program.txt", "r") do |f|
  f.each_line do |line|
    line = line.strip
    puts "Before parsing : #{line}"
    node = Program.new
    node.parse(Context.new(line))
    puts "After parsing  : #{node.to_s}"
  end
end
