---
layout: post
title: "Algorithm Analysis Of Merge Sort Using Divide And Conquer Approach"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\divideConquer.png
---

<p>
In the <a href="https://makemetechie.com/2018/02/24/getting-started-with-algorithm-and-its-analysis-insertion-sort/">last blog post</a> , we had a look at insertion sort which uses an incremental approach. Having an unsorted array, we would insert the elements of array in the correct position, yielding a sorted array.
</p><p>
In this blog post we will be designing an algorithm and analyzing its complexity using divide and conquer approach. Using this approach we can bring down the complexity, since the worst case running time is much less than insertion sort. One advantage of divide n conquer algorithm is that their running time can be easily determined.
</p><p>
<strong>Divide And Conquer Approach</strong>
</p><p>
Before beginning to explain divide and conquer approach, let’s consider a very basic example. Suppose you have a very long wooden log. You need to break it into small parts, how will you approach this problem. One solution is to take one end of log and start cutting it from one end till you reach the other end of the wooden log. Another approach is to take the wooden log and cut it from the center of the log. Next place the two halves of the wooden log and put them in parallel and now again use the axe to cut them from middle of the wooden log. Like this you are able to cut more efficiently and you can complete your log cutting task in lesser time. Similar is the approach of divide and conquer.
</p><p>
You take an array and keep on dividing, such that it cannot be further divided, then conquer the array using the desired algorithm and combine the array back to get the desired result.
</p><p>
Divide and conquer algorithm are recursive in structure: to solve a given problem, they call themselves recursively and solve the subproblem which might or might not be similar to the main problem and then combine these solutions to create a solution to the original problem.
</p><p>
Divide and conquer paradigm involves three steps at each level of recursion:
</p><p>
<strong>Divide</strong> : Divide the problem into subproblem that are smaller instances of the same problem. Usually they are divided into two parts.
</p><p>
<strong>Conquer</strong>: Solve the subproblem using appropriate logic
</p><p>
<strong>Combine</strong>: Further the subproblems are combined back to provide the solution to the original problem
</p><p>
Divide and conquer uses bottom-to-up approach, since it solves the problem after the array has been broken to the elementary position, then the array combines to solve the problem.
</p><p>
Using <strong>merge sort</strong> as an example we will understand divide and conquer approach
</p><p>
Whenever we follow divide and conquer approach we use the following steps:
</p><p>
<strong>Divide</strong>: Divide the n-element array into two subarrays of n/2 each
</p><p>
<strong>Conquer</strong>: Sort the two subsequence recursively using merge sort algorithm
</p><p>
<strong>Combine</strong>: Merge the sorted arrays to produce the required array
</p><p>
We’ll work on the pseudo code for merger sort. We call a function merge and pass unsorted array as parameter with p,q,r as additional parameters containing first index, middle index and last index of the array. Pseudocode is shown below:
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/83ca5377f2dd19304ba1a95c6b60a7bb.js"></script>
</p><p>
Let us apply the above algorithm and divide and conquer approach on the following example
</p><p>
<img class="alignnone size-medium wp-image-58 center-div" src="\assets\images\Content\mergesort.png" alt=""/>
</p><p>
In the above example above, we are given an array {3,7,5,4}. According to the algorithm described, we first break the array into 2 parts, then we further break it into sub parts till we reach the point where the array cannot be further divided.
</p><p>
Then we combine the array and sort them by checking the first element of left and right array as described in above algorithm and compare the first elements in the right and left array, the smaller element from the array is inserted back in the array. This process is continued till no element is present in both left and right array.
</p><p>
<strong>Analyzing divide-and-conquer algorithm</strong>
</p><p>
When an algorithm contains a recursive call to itself, we often describe the running time by recurrence equation, which describes the overall running time on a problem of size n. We then use the mathematical tools to solve the recurrence equation.
</p><p>
A recurrence relation is based on a simple logic. As before T(n) is the running time of a problem of size n. If a problem is small enough, here T(n) = 1. Suppose that our division of subproblem yields ‘a’ subproblem each of which is ‘1/b’ the size of the original. For merge sort, both ‘a’ and ‘b’ is equal to 2, however we will see divide and conquer algorithm for which ‘a’ and ‘b’ are unequal.
</p><p>
It takes time T(n/b) to solve one subproblem, hence it will take a*T(n/b) to solve ‘a’ subproblems. If it takes D(n) time to divide the algorithm further and C(n) time to combine the algorithm, we get the recurrence :
</p><p>
T(n) = 1 if n&lt;=c
</p><p>
aT(n/b) + D(n) + C(n) , otherwise
</p><p>
In further chapters we will see how to solve the above recurrence relation
</p><p>
<strong>Analysis of merge sort</strong>
</p><p>
The analysis of merge sort is simplified if the original array is divided in to two parts, hence original size is the power of 2.Which is further divided into power of 2 and so on. We will further see that this assumption does not affect the order of growth of the solution to recurrence.
</p><p>
The running time is calculated as follows:
</p><p>
<strong>Divide</strong>: The array is divided into two parts, hence it takes a constant time theta(1)
</p><p>
<strong>Conquer</strong>: We recursively solve two subproblems, each of size n/2, which adds up to 2T(n/2)
</p><p>
<strong>Combine</strong>: It takes theta(n) time to combine as mentioned in MERGE algorithm, hence C(n) = theta(n)
</p><p>
From above we can conclude:
</p><p>
T(n) = theta(n), if n = 1
</p><p>
2T(n/2) + theta(n), if n&gt;1
</p><p>
Further in the post we learn about master theorm, from which we can show that running time of above equation comes out to be theta(n lgn), where lgn is log base2.
</p><p>
Since logarithm function grows slowly than any linear function, for large enough inputs, merge sort with complexity of theta(nlgn) out performs theta(n^2), in worse case scenario .
</p><p>
C++ program of the same is shown <a href="https://github.com/NavneetPrakashSingh/Getting-Started-With-Programming/blob/master/Program%20TO%20Implement%20Merge%20Sort%20Using%20C%2B%2B.cpp">here</a>
<p></p>
That’s all folks for now, next we will be solving more problems using divide and conquer approach, analyze the complexity of the problem and much more.
</p><p>
