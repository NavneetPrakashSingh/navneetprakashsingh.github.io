---
layout: post
title: "The Graph Theory | Topological Sort"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\graphTheory.png
---

<p>
Within the last blog post we understood the algorithm related to depth-first search. Within this section we use depth first search to perform topological sort of a directed acyclic graph (DAG). Within this blog post we will discuss the following topics
</p><p>
<ul>
<li>Introduction to topological sort</li>
<li>Understand topological sort via example</li>
<li>Write pseudocode for the same</li>
<li>Analyze the complexity of topological sort</li>
</ul>
</p><p>
<strong>Introduction to topological sort</strong>
</p><p>
A topological sort of a directed acyclic graph (DAG) G=(V,E) is a linear ordering of all its vertices such that if G contains an edge (u,v), then u appears before v in the ordering. Topological sort is different from usual kind of sorting studied in previous blog post.
</p><p>
Basically, what it means by u appears before v in the ordering is if we are inserting ‘u’ node into the stack, then until node ‘v’ is pushed into stack we won’t pop out node ‘u’ from the stack.
</p><p>
<strong>Let us explain it via example and write a pseudocode for the same.</strong>
</p>
<img src="\assets\images\Content\TopologicalSort.png" alt="" width="275" height="3365" class="alignnone size-full wp-image-181 center-div" />
<div>
In the above example we took a basic example to explain how topological sort work. It’s not same as DFS, but its different from that. Within DFS the child nodes are printed first as compared to parent nodes whereas in topological sort, we print the parent node first as compared to child node.
</div>
<p>
<strong>Let us write a pseudocode for the same.</strong>
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/f6e0c70dfb9485d3c1646496953429ea.js"></script>
</p><p>
The above algorithm is simple, we just modified our DFS algorithm to follow topological sort. First, we color all the nodes as white and change to ancestor as nil and time as 0 since no node has been parsed.
Then we cover all the adjacent vertex of current node using TOPOLOGICAL-VISIT and recursively call this function and once it reaches the base case i.e when no adjacent element is white we come out of the loop and color is black and insert the element into the stack. 
</p><p>
Since we are recursively calling the function, it means that the adjacent element of the adjacent element of the source element will be parsed first and hence it goes deeper into the graph.
</p><p>
Then finally we print the stack to get our desired output sequence.
</p><p>
<strong>Analyzing the complexity of topological sort</strong>
</p><p>
We can perform topological sort in &theta; (V+E) time, since depth-first search takes &theta; (V+E) time and it takes O(1) time to insert each of the |V| vertices into the array.
</p><p>
That’s all folks! We have covered topological sort in this blog post. We understood what topological sort is, explained it via example, wrote a pseudocode for the same and analyzed its complexity. Within our next blog post we are going to look at other graph algorithms like Bellman-Ford algorithm and Dijkstra’s algorithm.
</p>
