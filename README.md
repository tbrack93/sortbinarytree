# README

This is my solution to the Codewars Kata [Sort Binary Tree By Levels](http://www.codewars.com/kata/sort-binary-tree-by-levels/train/ruby)

The challenge is to return an array with the value of each node from a binary tree, ordered by level.
For example:

               18
           /       \
         15         30
        /  \        /  \
      40    50    100   40

Should give an output of [18, 15, 30, 40, 50, 100, 40]

If an empty tree (no argument) is passed to the method, it should return an empty array []

# STYLISTIC CHOICES

I have aimed for readability over brevity in this solution. Namely, I have left in return statements
and used .nil? queries instead of shorter truthiness checks. For eample 'unless current_node.left.nil?'
could be shortened to 'if current.node.left' but I believe this is less readable.

# TESTS

I have included 4 test scenarios: an empty tree (no argument), a full 3 level tree, a full 4 level tree
and a pathological 4 level tree. I have manually created the trees rather than using a dedicated function for this,
to remove any dependency on the accuracy of this additional function.

This solution has also passed the Codewars tests, but details of what these comprise are not provided on the site.


