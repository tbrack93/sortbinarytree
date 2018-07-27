require 'rspec'
require_relative 'tree_by_levels'


RSpec.describe "method passed empty tree (no argument)" do
  it 'should return empty array' do
    result = tree_by_levels()
    expect(result).to eq([])
  end
end

RSpec.describe "method passed full, 2 level tree" do
  rootnode = TreeNode.new(18)
  childnode1 = TreeNode.new(15)
  childnode2 = TreeNode.new(30)
  rootnode.left = childnode1
  rootnode.right = childnode2
  it 'should return array of values by level' do
    result = tree_by_levels(rootnode)
    expect(result).to eq([18, 15, 30])
  end
end

RSpec.describe "method passed full, 3 level tree" do
  rootnode = TreeNode.new(18)
  childnode1 = TreeNode.new(15)
  childnode2 = TreeNode.new(30)
  rootnode.left = childnode1
  rootnode.right = childnode2
  childnode3 = TreeNode.new(40)
  childnode4 = TreeNode.new(50)
  childnode1.left = childnode3
  childnode1.right = childnode4
  childnode5 = TreeNode.new(100)
  childnode6 = TreeNode.new(40)
  childnode2.left = childnode5
  childnode2.right = childnode6
  it 'should return array of values by level' do
    result = tree_by_levels(rootnode)
    expect(result).to eq([18, 15, 30, 40, 50, 100, 40])
  end
end

RSpec.describe "method passed a pathological, 4 level tree" do
  rootnode = TreeNode.new(10)
  childnode1 = TreeNode.new(20)
  rootnode.left = childnode1
  childnode2 = TreeNode.new(30)
  childnode1.right = childnode2
  childnode3 = TreeNode.new(40)
  childnode2.right = childnode3
  it 'should return array of values by level' do
    result = tree_by_levels(rootnode)
    expect(result).to eq([10, 20, 30, 40])
  end
end




