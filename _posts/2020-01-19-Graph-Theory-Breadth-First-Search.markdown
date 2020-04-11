---
layout: post
title: "The Graph Theory | Breadth First Search"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\graphTheory.png
featured: true
---

<p>
Breadth first search is one of the most basic algorithms for searching a graph. Many other algorithms like Prim’s minimum spanning tree and Dijkstra’s single source shortest path algorithm are derived from breadth first search algorithm.
</p><p>
Within this blog post we will be
<ul>
<li>Giving a brief introduction to bread-first search</li>
<li>Write a pseudocode for the same</li>
<li>Explain it via example </li>
<li>Analyze the complexity</li>
<li>Write a c++ program related to the same</li>
</ul>
</p><p>
<strong>Introduction To Breadth First Search</strong>
</p><p>
Suppose we are given a graph G = (V,E) and a distinguished source vertex S. Breadth first search explored the edges of G to find all vertices that are reachable from s. It computes the distance from s to each reachable vertex. 
</p><p>
For every vertex v reachable from s, the simple path containing source vertex v and source vertex s is the shortest path from s to v.
</p><p>
Breadth first search is names so because it first looks at the nodes directly corresponding to the base node, then it go deep down at other nodes within the graph. Basically just like in a tree, we have parent node as the source node and the child nodes as the nodes directly corresponding to the base node. First the root node is parsed, then the corresponding nodes to the root node and so on.
</p><p>
<strong>Pseudocode of breadth first search</strong>
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/58ac20bba19bcf3b6f640ef6aed755cc.js"></script>
</p><p>
The pseudocode is simple. 
</p><p>
First we are going to parse all vertex of the graph except for the source vertex and change the color of the node to white, since the nodes haven’t been parsed so distance will be zero and no ancestor node is present.
</p><p>
Next we are going to change the color of the source vertex to gray and since it’s the initial node we change the distance to 0 and it has no ancestor nodes.
</p><p>
Now we will take an empty queue and start adding the gray color elements to the queue. Gray colored elements are those which are currently being parsed. Once we have added the gray color elements to the queue we will take the adjacent element from the adjacency list of the gray element and add them to the queue. Since queue works on FIFO principle, the element is inserted from the last position but the first element inserted will be taken out of the queue.
</p><p>
Now we are going to parse the queue till the time it’s not empty and dequeue the queue. Once the adjacent elements are being parsed, we will change the color of the element to gray, increase the distance by one and enqueue the queue. Once the element of the queue is parsed we will change of the color of the element to be dequeued to black. Once all the elements of the graph has been parsed we will have all nodes as black.
</p><p>
This approach is explained via example
</p><p>
The adjacency list for the graph is shown here
</p><p>
<img src="\assets\images\Content\bfs2.png" alt="" width="280" height="678" class="alignnone size-full wp-image-157 center-div" />
</p><p>
The operations of BFS on undirected graph are shown below:
</p><p>
<img src="\assets\images\Content\bfs.png" alt="" width="289" height="1952" class="alignnone size-full wp-image-158 center-div" />
</p><p>
<strong>Analysis of BFS algorithm</strong>
</p><p>
We know that all the elements of the graph will be parsed only once or atmost once. The operation to enqueue and dequeue takes O(1) time, so total time devoted by queue is only O(V). The algorithm scans the adjacency list of each vertex only when the vertex is dequeued, it scans each adjacency list at most once. Since the sum of the lengths of all the adjacency list is &theta;(E), the total time spent in scanning adjacency lists is O(E). So the total running time of BFS procedure is O(V+E).
</p><p>
That’s all folks for now! We discussed a very important algorithm called breadth first search, wrote a pseudocode for the same, explained it via example and analyzed its complexity. Within our next tutorial, we are going to look at another important algorithm called Depth First Search.
</p><p>
