---
layout: post
title: "Introduction To Queues"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\data_structure.png
---

<p>
In this blog post we will cover the following concepts
<ul>
<li>Introduction to queues</li>
<li>Basic operations on queue (Enqueue And Dequeue)</li>
<li>Pseudocode related to queue</li>
<li>Complexity of operations</li>
</ul>
</p><p>
<strong>Introduction To Queue</strong>
</p><p>
In the previous blog post, we introduced you to stacks, which are a dynamic data structure using LIFO principle; similar to that we have queues. Queues uses data structure using FIFO  ( First In First Out) principle.
</p><p> 
Insertion operation in queue is called Enqueue and delete operation is called Dequeue like POP operation in stacks. A real life example of queues is when you waiting in a line to pay your bill. The first customer who came is served first and then the next one and so on.
</p><p>
<strong>Basic Operations On Queue</strong>
</p><p>
Insertion in queue is called enqueu and deletion from queue is called dequeuer. Enqueue and dequeue is explained via following example.
</p>
<img src="\assets\images\Content\Queue.png" alt="" width="280" height="495" class="alignnone size-full wp-image-114 center-div" />
<p>
In the above example we have head and tail which monitors the current starting and current ending index of the queue. When enqueue happens tail is shifted to the next empty position of the array and element is inserted in this position. Moreover when dequeue happens, the current value is deleted and the head is shifted to the next position.
</p><p>
<strong>Pseudocode</strong>
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/becdc499ededb687d5d2b3ba35625056.js"></script>
</p><p>
In the above pseudocode we demonstrated 2 basic operations of queue. Enqueue and Dequeue. When we have to add an element to the queue we use enqueuer and when we have to delete an element in the queue we use dequeue. In enqueue at the tail we place the value to be added and increment tail by 1. Similarly, in dequeue we take the element at head position, delete it and increment the value of head by one.
</p><p>
<strong>Complexity Of Queue</strong>
</p><p>
Each of the queue operation takes O (1) time.
</p><p>
That’s all folks! We were able to create a queue, write pseudocode for enqueue and dequeue the queue i.e add and delete element at queue and explained it via example. That will be all for now, in the next blog post we will go through another data structure.
</p>
