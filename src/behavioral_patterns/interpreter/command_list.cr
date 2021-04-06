# ˅
require "./node"
require "./command"

# ˄

class CommandList < Node
  # ˅

  # ˄

  @nodes : Array(Node)

  def initialize
    # ˅
    @nodes = Array(Node).new
    # ˄
  end

  def parse(context : Context)
    # ˅
    while true
      if context.get_token.nil?
        abort("Missing 'end'")
      elsif context.get_token == "end"
        context.slide_token("end")
        break
      else
        a_node = Command.new
        a_node.parse(context)

        @nodes.push(a_node) # Hold the parsed node
      end
    end
    # ˄
  end

  def to_s : String
    # ˅
    nodes_s = Array(String).new
    @nodes.each do |node|
      nodes_s.push(node.to_s)
    end

    return "[#{nodes_s.join(", ")}]"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
