require "byebug"

class PolyTreeNode
  attr_accessor :parent, :children, :value

  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parents
    self.parent
  end

  def child
    self.children
  end

  def values
    self.value
  end

  def parent=(node)
    return if @parent == node
    self.parent.child.delete(self) unless self.parent.nil?
    @parent = node
    unless node.nil?
      node.child << self
    end
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    raise "Error" if child_node.parent != self
    child_node.parent = nil
  end

  def dfs(target_value)
    return nil if self.nil?
    return self if self.value == target_value

    self.children.each do |child|
      search_result = child.dfs(target_value)
      return search_result unless search_result.nil?
    end

    nil
  end

  def bfs(target_value)
    queue = [self]
    until queue.empty?
      el = queue.shift
      return el if el.value == target_value
      el.children.each { |child| queue << child }
    end
    nil
  end

  def inspect
    "parent value #{parent.value} node value #{value} "
  end
end
