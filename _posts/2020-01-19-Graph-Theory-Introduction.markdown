---
layout: post
title: "The Graph Theory | Introduction"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\graphTheory.png
---

<p>In this blog post 
<ul>
<li>we will be giving a basic introduction to graphs, </li>
<li>discuss some applications of graphs </li>
<li>learn how to represent a graph.</li>
</ul>
</p><p>
<strong>Introduction To Graphs</strong>
</p><p>
Graph is one of the indispensable topics that you’ll go through in your computer science journey. Hundreds of interesting computational problems are solved in terms of graphs. Within this blog post we will be looking at some of the application of graphs.
</p><p>
<ul>
<li>Graph theory is used for ranking (ordering) links on google search engine</li>
<li>It’s used in GPS to find the shortest path from one location to another</li>
<li>It’s also used in search bar of facebook and other social networking sites where they use graph api. Every user is node/vertices and there is a connection between them represented by edges</li>
<li>On e-commerce website like amazon, relationship graphs are used to show recommendations.</li>
</ul>
</p><p>
The above applications are just to name a few and by this you must have figured out that every major feature in a project isn’t complete without graphs.
</p><p>
Within further blog post we will be covering algorithms and programs related to breadth-first and depth-first search. Next we will be using those algorithms to computer minimum-weight spanning tree of a graph. Further we will learn to compute shortest path between vertices when each edge has an associated length or weight.
</p><p>
In order to calculate the running time of a graph on a given graph G = (V,E), we usually measure the size of the input in terms of number of vertices V and edges E of a graph. For example we donate the running time in O(V*E). Within the pseudocode we view vertex and edge sets as attributes of a graph.
</p><p>
<strong>Representation of graphs</strong>
</p><p>
There are two standard ways to represent a graph G = (V,E): as a collection of adjacency list or a adjacency matrix. Both these ways can be used for directed or undirected graphs. 
</p><p>
In case the edges are much less than vertices in a graph we use adjacency list to represent graphs and in case the graph is dense such that edges are equal to vertices in a graph we use adjacency matrix.
Both the representation for directed and undirected graphs are shown below in example.
</p><p>
<img src="\assets\images\Content\graph1.png" alt="" width="290" height="1384" class="alignnone size-full wp-image-144 center-div" />
</p><p>
There are two main ways to represent graphs, first as a collection of adjacency list and other as an adjacency matrix. Either way applies to both directed and undirected graphs. Adjacency list represents the edges of a graph.
</p><p>
If G is a directed graph, the sum of the lengths of all the adjacency list is E. If G is an undirected graph, the sum of the lengths of all the adjacency list is 2*E. For both directed and undirected graphs, the adjacency list representation has a property that the amount of memory it requires is &theta; (V + E).
</p><p>
For representing weighted graphs, we use adjacency list. Weighted graphs are graphs for which each edge has an associated weight.
</p><p>
A major disadvantage of adjacency list is that it provides no quicker way to determine whether a given edge is present in a graph or not. This disadvantage is however covered up by adjacency matrix, but at a cost of using more memory.
</p><p>
That’s all for now! We have created a basic understanding of graphs in this blog post. We leant the application of graphs and how to represent them using adjacency list and adjacency matrix. Within the next blog post we will discuss breadth first search and implement an algorithm related to the same.
</p><p>
