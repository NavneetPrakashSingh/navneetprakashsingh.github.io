---
layout: post
title: "Introduction To Stacks"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\data_structure.png
---

<p>
In this blog post we will cover the following concepts
<ul>
<li>Introduction to stacks</li>
<li>Basic operations on stacks (Push And Pop)</li>
<li>Pseudocode related to stacks</li>
<li>Complexity of operations</li>
</ul>
</p><p>
<strong>Introduction To Stacks</strong>
</p><p>
In order to explain what a stack is I’ll be taking a real time example. Consider a large number of trays are placed on over the other. Now you want to add your tray to the already placed trays, so you’ll put one at the top. Now suppose you want to take a tray from the collection, you’ll take the topmost available tray. This is how stacks work. 
</p><p>
Stacks uses array as data structure which are dynamic sets in which the element deleted from the set is the last one inserted and a new element added is added at the end of the array. It follows LIFO property, i.e the last element added is the first element to get out of the array. 
</p><p>
<strong>Basic Operations On Stacks</strong>
</p><p>
The insert operation on a stack is often called PUSH, and the delete operation is called POP. Consider the following example.
</p><p>
<img src="\assets\images\Content\Stacks.png" alt="" width="290" height="746" class="alignnone size-full wp-image-111 center-div" />
</p><p>
In the above example the new array element is inserted into last position using PUSH operations and deleted from the last position using POP operation.
</p><p>
<strong>Pseudocode </strong>
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/6992c92f00557f5641206525f3edc0ed.js"></script>
</p><p>
In the above pseudocode we implemented what we learnt. If we want to delete the last element of stack, we use POP operation, in which we check if the stack is empty or not. If its not empty the last element is deleted and last index is shifted to the previous index. Similarly, if we push a value to the stack, the last index is moved to the next index and new element is added at that place.
</p><p>
<strong>Complexity Of Stacks</strong>
</p><p>
Each of the stack operation takes O (1) time.
</p><p>
That’s all folks, we are done with the basic operations of stack. In the next blog we are going to have a look at Queues and its basic opeartions.
</p>
