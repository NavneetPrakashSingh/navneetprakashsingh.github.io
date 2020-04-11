---
layout: post
title: "The Graph Theory | Depth First Search"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\graphTheory.png
---

<p>
Within the last blog post we discussed <a href="https://makemetechie.com/2018/03/20/the-graph-theory-breadth-first-search/">Breadth First Search</a>, which searches the elements adjacent to the node elements first and then searched its deeper elements. Whereas in depth first search, as the name suggests we search deeper in the graph. Within this blog post we are going to 
<ul>
<li>Introduction to depth first search</li>
<li>Pseudocode related to depth first search</li>
<li>Explain it via example</li>
<li>Analyzing the complexity </li>
</ul>
</p><p>
<strong>Introduction to depth first search</strong>
</p><p>
Within breadth first search we know that we have a parent node and we take the adjacent elements of the parent node and add them to the queue while dequeue out the parent node from the queue. Within the depth first search algorithm, we take the parent node in the stack and then take the adjacent elements of the parent node into the stack and we keep on doing it once all nodes have been discovered. Once all the nodes in the breadth first search has been parsed we start to pop out the elements from the stack.
</p><p>
<strong>Pseudocode related to depth first search</strong>
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/dc3d486107b73ddb740db1137440d5e4.js"></script>
</p><p>
First we call the DFS function in the pseudocode above. Initially we color all the elements of the graph as white since none of them is visited and set the ancestor as nil and time taken as 0.
</p><p>
Now we parse each and every white vertex of graph and if their color is white we call the DFS-VISIT function with graph as a parameter. First we increment the time and change the color of the element as gray.
</p><p>
Next we take the adjacent elements of the graph and if the element has color white, we take the ancestor as the root element and recursively call DFS-VISIT function to go deeper in the graph. Once all the adjacent element is parsed we change the color of the root element as black and increment the time.
u.d and u.f are the initial and final time stamp for a vertex that is being parsed. These timestamp provide important information about the structure of the graph and are generally helpful in reasoning about the behavior of depth-first search.
</p><p>
For every vertex u,
</p><p>
u.d<u.f
</p><p>
<strong>Let us explain the above pseudocode with the following example.</strong>

<img src="\assets\images\Content\Dfs.png" alt="" width="280" height="3765" class="alignnone size-full wp-image-176 center-div" />
</p><p>
In the above image we initially create an adjacency matrix and parse the graph using dfs algorithm and adjacency matrix to parse the graph.
</p><p>
<strong>Analyzing complexity of dfs</strong>
</p><p>
In order to parse each every vertex of the graph we can do it into &theta; (V) time. The procedure DFS-VISIT function in the algorithm is called exactly once for each vertex v. Each vertex is executed |Adj[v]| times which is equal to &theta; (E) , so the total cose of executing of DFS-VISIT is &theta; (E). Therefore, the running time of DFS is &theta; (V + E)
</p><p>
That’s all folks! In this blog post we initially understood what dfs is, then wrote a pseudocode for the same. Then used that pseudocode to explain an example related to dfs and finally analyzed the complexity of the same. Within the next post we are going to look at topological sort which uses depth-first search algorithm for acyclic graphs.
</p>
