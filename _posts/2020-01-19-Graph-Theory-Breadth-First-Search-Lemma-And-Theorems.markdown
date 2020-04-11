---
layout: post
title: "The Graph Theory | Breadth First Search | Lemma And Theorems"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\graphTheory.png
---

<p>
Within this blog post we will be going over 3 lemma and 1 theorem related to breadth first search. If you haven’t gone through our previous <a href="https://makemetechie.com/2018/03/20/the-graph-theory-breadth-first-search/">Breadth First Search algorithm</a>, we recommend going through that first. For all those who don’t know what lemma is, it’s an intermediate proof used to prove a theorem. 
</p><p>
<hr>
<strong>Lemma 1 : Let G(V,E) be a directed or undirected graph and let s belonging to set of vertices be an arbitrary vertex, then for any edge (u,v) belongs to set of edges such that
Shortest distance between s and v <=  (shortest distance between s and u)  +  1</strong>
</p><p>
Proof: We are given that u and v are the vertices to a graph G having edge as uv. If source vertex ‘s’ is reachable from ‘u’ then its reachable to ‘v’. In this case the shortest path from s to v cannot be longer than the shortest path from s to u followed by the edge of uv and thus our inequality holds true. If u is not reachable from s, then shortest distance from s and u does not exist and the inequality holds.
</p><p>
<hr>
<strong>Lemma 2 : Let G = (V,E) be a directed or undirected graph and suppose that BFS is run on G from a given source vertex s which belongs to set of vertices V. Then upon termination, for each vertex v belonging to V, the value v.d computed by BFS satisfies v.d >= shortest distance between s and v.</strong>
</p><p>
Proof : Our inductive hypothesis is that v.d >= shortest distance between s,v for all v belonging to set of vertices. We’ll prove it via induction.
</p><p>
Within the bfs algorithm check line 9. Immediately after value is enqueued the value of s.d = 0, since it’s the source vertex in the queue and v.d = not defined, hence greater than shortest distance of s and v for all values of v belonging to vertex V except for the source vertex. Hence, our induction hypothesis holds here.
</p><p>
For the inductive step, consider a white vertex v that is discovered during the search from a vertex u. The inductive hypothesis implies that u.d >= shortest distance between s and u. From lemma1, we get
v.d = u.d + 1 
</p><p>
>= shortest distance between s and u + 1
</p><p>
>= shortest distance between s and v
</p><p>
Vertex v once enqueued is never parsed again. Thus value of v.d never changes hence the lemma i.e v.d>= shortest distance betwnee s and v is proved.
</p><p>
<hr>
<strong>Lemma3 : Suppose that during the execution of BFS on a graph G = (V,E), the queue contains the vertices <v <sub>1</sub>, v<sub>2</sub>,. . .,v<sub>r</sub> >, where v <sub> 1 </sub> is the head of Q and v <sub> r </sub> is the tail. Then v <sub>r</sub>.d <= v<sub>1</sub>.d+1 and v <sub>i</sub>.d <= v<sub>i+1</sub>.d for I = 1,2,. . .,r-1 </strong>
</p><p>
Proof : The proof is by induction on the number of queue operations. Initially, when the queue contains only s, the lemma certainly holds.
</p><p>
For the inductive step, we must prove that the lemma holds after both dequeuing and enqueuing a vertex. If the head v<sub>1</sub> of the queue is dequeued, v<sub>2</sub> becomes the new head. By the inductive hypothesis, v<sub>1</sub>.d <= v<sub>2</sub>.d
</p><p>
When we enqueuer a vertex v in line 17 of BFS algorithm, it becomes v<sub>r+1</sub>. At that time, we have already removed vertex u, whose adjacency list is currently being scanned from the queue Q, and by the inductive hypothesis, the new head v<sub>1</sub> has v<sub>1</sub>.d >= u.d and the remaining inequalities are unaffected. Thus the lemma follows when v is enqueued.
</p><p>
<hr>
<strong> Theorem 1 : Let G=(V,E) be a directed or undirected graph and suppose that BFS is run on G from a given source vertex s belonging to V. Then, during its execution, BFS discovers every vertex v belongs to V that is reachable from the source s, and upon termination, v.d = shortest distance of s and v for all v belonging to V. Moreover, for any vertex v != s that is reachable from s, one of the shortest path from s to v is a shortest path from s to v.a followed by the edge (v.a,v). </strong>
</p><p>
Proof: Let us assume that some vertex receives a value ‘d’ not equal to its shortest path distance. Let v be the vertex with minimum of s,v that receives such an incorrect d value. 
</p><p>
By lemma 2, v.d >= shortest distance of (s,v) an thus we have that v.d > shortest distance of (s,v). Vertex v must be reachable from s, for if not, then shortest distance of (s,v) is not defined, which is greater than v.d. Let u be the vertex immediately preceding v on a shortest path from s to v, such that shortest distance of (s,v) = shortest distance of s and u  + 1. Hence we have u.d = shortest distane of s and u. Putting these two properties together, we have
</p><p>
v.d > shortest distance of (s,v) = shortest distance of (s,u) +1 > u.d + 1
</p><p>
Now when BFS dequeues vertex u from Q in line 11 in the BFS pseudocode, vertex v is either white, gray or black. In each of the cases, we derive the same case of inequality as mentioned above.
</p><p>
If v is white, then the above inequality is set to v.d = u.d + 1 which is against the above inequality.
If v is black then it was already removed from the queue, and we have v.d < = u.d, again contradicting the above inequality.
</p><p>
If v is gray, then it ws painted gray upon dequeuing some vertex w, which was removed from the queue earlier than u and for which v.d = w.d + 1
</p><p>
Thus we conclude that v.d = shortest distance of s and v for all v belonging to V.Observe that if v.a = u, then v.d = u.d + 1. Thus, we can obtain a shortest path from s to v by taking a shortest path from s to v .a and then traversing the edge (v.a,v)
</p><p>
That’s all folks! We have discussed our lemma and an important theorem related to BFS. Within the next blog post we will begin with depth first search algorithm.
</p>
