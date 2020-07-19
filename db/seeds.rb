# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# some of the below algorithms are sourced from here: https://medium.com/techie-delight/top-algorithms-data-structures-concepts-every-computer-science-student-should-know-e0549c67b4ac

algorithms = Algorithm.create(
  [
    { algotype: 'Binary Search'},
    { algotype: 'Linear Search'},
    { algotype: 'Naive Search'},
    { algotype: 'Bubble Sort'},
    { algotype: 'Selection Sort'},
    { algotype: 'Insertion Sort'},
    { algotype: 'Merge Sort'},
    { algotype: 'Quick Sort'},
    { algotype: 'Radix Sort'},
    { algotype: "Dijkstra's Algorithm"},
    { algotype: 'Breadth First Search'},
    { algotype: 'Depth First Search'},
    { algotype: 'Subarray Sort'},
    { algotype: 'Lee Algorithm; Shortest Path in a Maze'},
    { algotype: 'Flood Fill Algorithm'},
    { algotype: "Floyd's Cycle Detection Algorithm"},
    { algotype: "Kadane's Algorithm"},
    { algotype: 'Longest Increasing Subsequence'},
    { algotype: 'In Order Tree Traversal'},
    { algotype: 'Pre Order Tree Traversal'},
    { algotype: 'Post Order Tree Traversal'},
    { algotype: 'Heap Sort'},
    { algotype: 'Topological Sorting in a Directed Acyclic Graph'},
    { algotype: 'Disjoint-Set Data Structure (Union-Find Algorithm)'},
    { algotype: "Kruskal's Algorithm for Finding Minimum Spanning Tree"},
    { algotype: 'Floyd Warshall Algorithm'},
    { algotype: 'Validate Subsequence'},
    { algotype: 'Subarray Sort'},
    { algotype: 'Find Closest Value in BST'},
    { algotype: 'BST Construction'},
    { algotype: 'River Sizes'},
    { algotype: 'Airport Connections'},
    { algotype: 'Rearrange Linked List'},
  ]
)