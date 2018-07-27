require_relative 'tree_node'

def tree_by_levels(node = nil)
  return [] if node.nil?
  values = []
  nodes = [node]
    until nodes.empty?
      current_node = nodes.shift
      values << current_node.value
      nodes << current_node.left unless current_node.left.nil?
      nodes << current_node.right unless current_node.right.nil?
    end
  return values
end
