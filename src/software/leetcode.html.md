---
title: LeetCode
---

# LeetCode

Some solutions coded in Ruby for the [Grind 75][0] list of [LeetCode][1]
problems grouped by topics.

[0]: https://www.techinterviewhandbook.org/grind75/
[1]: https://leetcode.com/problems/

## Array

### Two Sum (Easy)

Find two numbers in an array that add up to a specific target and return their
indices.

```ruby
# Time: O(n)
# Space: O(n)
def two_sum(a, t)
  h = {}
  a.each_with_index do |x, i|
    y = t - x
    return [h[y], i] if h[y]
    h[x] = i
  end
end
```

### Best Time to Buy and Sell Stock (Easy)

Find the maximum profit that can be achieved by buying and then selling a stock
given its prices over time.

```ruby
# Time: O(n)
# Space: O(1)
def max_profit(prices)
  max_profit = 0
  min_price = prices[0]
  prices.each do |price|
    if min_price > price
      min_price = price
    else
      cur_profit = price - min_price
      max_profit = [max_profit, cur_profit].max
    end
  end
  max_profit
end
```

### Majority Element (Easy)

Find the element that appears more than half the time in an array.

```ruby
# Time: O(n)
# Space: O(1)
# Boyer-Moore majority vote algorithm
def majority_element(a)
  m = nil
  c = 0
  a.each do |x|
    if c == 0
      m = x
      c = 1
    elsif m == x
      c += 1
    else
      c -= 1
    end
  end
  m
end
```

### Contains Duplicate (Easy)

Determine if an array contains any duplicates by checking if any value appears
at least twice.

```ruby
# Time: O(n)
# Space: O(n)
def contains_duplicate?(a)
  s = Set[]
  a.any? { |x| s.add?(x).nil? }
end
```

## Stack

### Valid Parentheses (Easy)

Determine if a string containing only parentheses is valid by ensuring that
every opening bracket has a corresponding closing bracket in the correct order.

```ruby
# Time: O(n)
# Space: O(n)
def valid_parentheses?(s)
  h = { ")" => "(", "]" => "[", "}" => "{" }
  a = [] # Used as a stack
  s.each_char do |c|
    if h[c]
      return false if a.empty? || a.last != h[c]
      a.pop
    else
      a.push(c)
    end
  end
  a.empty?
end
```

### Implement Queue using Stacks (Easy)

Simulate a queue's behavior using two stacks to manage the order of items.

```ruby
class MyQueue
  def initialize
    @a = []
    @b = []
  end

  def push(x)
    @a.push(x)
  end

  def pop
    if @b.empty?
      @b.push(@a.pop) until @a.empty?
    end
    @b.pop
  end

  def peek
    if @b.empty?
      @b.push(@a.pop) until @a.empty?
    end
    @b.last
  end

  def empty?
    @a.empty? && @b.empty?
  end
end
```

## Linked List

### Merge Two Sorted Lists (Easy)

Merge two sorted linked lists into a single sorted linked list.

```ruby
# Time: O(n)
# Space: O(n)
# Recursive version
def merge_two_sorted_lists(a, b)
  return a if b.nil?
  return b if a.nil?
  if a.val < b.val
    a.next = merge_two_sorted_lists(a.next, b)
    a
  else
    b.next = merge_two_sorted_lists(b.next, a)
    b
  end
end
```

```ruby
# Time: O(n)
# Space: O(1)
# Iterative version
def merge_two_sorted_lists(a, b)
  # TODO
end
```

### Linked List Cycle (Easy)

Detect if a linked list contains a cycle, where a node points back to a
previous node.

```ruby
# Time: O(n)
# Space: O(1)
def has_cycle(head)
  slow = head
  fast = head
  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
    return true if slow == fast
  end
  false
end
```

### Reverse Linked List (Easy)

Reverse a singly linked list so that the nodes are reversed in order.

```ruby
# Time: O(n)
# Space: O(1)
def reverse_list(head)
  new_head = head
  if head
    if head.next
      new_head = reverse_list(head.next)
      head.next.next = head
    end
    head.next = nil
  end
  new_head
end
```

### Middle of the Linked List (Easy)

Return the middle node of a singly linked list, or the second middle node if
the list has an even number of nodes.

```ruby
# Time: O(n)
# Space: O(1)
def middle_node(head)
  slow = head
  fast = head
  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
  end
  slow
end
```

## String

### Valid Palindrome (Easy)

Check if a given string, ignoring spaces and cases, reads the same forward and
backward.

```ruby
def alnum?(c)
  case c
  when "0".."9", "A".."Z", "a".."z"
    true
  else
    false
  end
end

# Time: O(n)
# Space: O(1)
def palindrome?(s)
  l = 0
  r = s.size - 1
  while l < r
    if !alnum? s[l]
      l += 1
    elsif !alnum? s[r]
      r -= 1
    elsif s[l].downcase == s[r].downcase
      l += 1
      r -= 1
    else
      return false
    end
  end
  true
end
```

### Valid Anagram (Easy)

Determine if two strings are anagrams by checking if they can be rearranged to
form each other.

```ruby
# Time: O(n)
# Space: O(n)
def anagram?(s, t)
  return false if s.size != t.size
  h = Hash.new(0)
  s.each_char { |c| h[c] += 1 }
  t.each_char { |c| h[c] -= 1 }
  h.values.all?(&:zero?)
end
```

```ruby
# Time: O(n)
# Space: O(n)
def anagram?(s, t)
  s.chars.tally == t.chars.tally
end
```

```ruby
# Time: O(n log n)
def anagram?(s, t)
  s.chars.sort == t.chars.sort
end
```

```ruby
# Time: O(n log n)
def anagram?(s, t) # Unicode aware
  s.grapheme_clusters.sort == t.grapheme_clusters.sort
end
```

### Longest Palindrome (Easy)

Find the length of the longest palindrome that can be constructed from the
characters in a given string.

```ruby
# Time: O(n)
# Space: O(1)
def longest_palindrome(s)
  n = 0
  h = Set[]
  s.each_char { |c| h.delete?(c) ? n += 2 : h.add(c) }
  h.empty? ? n : n + 1
end
```

## Binary Search

### Binary Search (Easy)

Implement binary search to find the position of a target value within a sorted
array.

```ruby
# Time: O(log n)
# Space: O(1)
def binary_search(a, t)
  l = 0
  r = a.size - 1
  while l <= r
    m = (l + r) / 2 # Avoid overflow with `l + (r - l) / 2`
    if a[m] < t
      l = m + 1
    elsif a[m] > t
      r = m - 1
    else
      return m
    end
  end
  -1
end
```

### First Bad Version (Easy)

Find the first bad version in a series of versions (from `1` to `n`), given an
API that returns whether a version is bad.

```ruby
# Time: O(log n)
# Space: O(1)
def first_bad_version(n)
  l = 1
  r = n
  while l < r
    m = (l + r) / 2
    if is_bad_version(m)
      r = m
    else
      l = m + 1
    end
  end
  l # Stop when `l == r`
end
```

## Binary Tree

### Invert Binary Tree (Easy)

Invert a binary tree by swapping the left and right children of all nodes.

```ruby
# Time: O(n)
# Space: O(n)
def invert_tree(root)
  return if root.nil?
  root.left, root.right = invert_tree(root.right), invert_tree(root.left)
  root
end
```

### Maximum Depth of Binary Tree (Easy)

Determine the maximum depth (or height) of a binary tree, which is the number
of nodes along the longest path from the root node down to the farthest leaf
node.

```ruby
# Time: O(n)
# Space: O(n)
# Recursive Depth First Search (DFS)
def max_depth(root)
  root ? [max_depth(root.left), max_depth(root.right)].max + 1 : 0
end
```

```ruby
# Time: O(n)
# Space: O(n)
# Iterative Depth First Search (DFS)
def max_depth(root)
  res = 0
  stack = [[root, 1]]
  until stack.empty?
    node, depth = stack.pop
    if node
      res = [res, depth].max
      stack.push([node.left, depth + 1])
      stack.push([node.right, depth + 1])
    end
  end
  res
end
```

```ruby
# Time: O(n)
# Space: O(n)
# Iterative Breath First Search (BFS)
def max_depth(root)
  depth = 0
  queue = []
  queue.push(root) if root
  until queue.empty?
    queue.size.times do
      node = queue.shift
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end
    depth += 1
  end
  depth
end
```

### Balanced Binary Tree (Easy)

Check if a binary tree is height-balanced, where the depth of two
subtrees of every node never differs by more than one.

```ruby
# Time: O(n)
# Space: O(n)
def balanced?(root)
  dfs(root)[0]
end

def dfs(root)
  if root.nil?
    [true, 0]
  else
    r1, d1 = dfs(root.left)
    r2, d2 = dfs(root.right)
    [r1 && r2 && ((d1 - d2).abs < 2), [d1, d2].max + 1]
  end
end
```

### Diameter of Binary Tree (Easy)

Find the length of the longest path between any two nodes in a binary tree,
which may or may not pass through the root.

```ruby
# Time: O(n)
# Space: O(n)
def diameter_of_binary_tree(root)
  dfs(root)[0]
end

def dfs(root)
  if root.nil?
    [0, 0] # diameter, depth/height
  else
    d1, h1 = dfs(root.left)
    d2, h2 = dfs(root.right)
    [[d1, d2, h1 + h2].max, [h1, h2].max + 1]
  end
end
```
