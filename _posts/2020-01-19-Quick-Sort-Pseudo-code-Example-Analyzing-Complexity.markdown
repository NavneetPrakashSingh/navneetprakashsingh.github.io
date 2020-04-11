---
layout: post
title: "Quick Sort | Pseudo code| Example | Analyzing Complexity"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\sort.png
---

<p>
In this blog we are going to learn quick sort which is considered one of the best practical choice for sorting despite having worst case as &theta;(n*n) as running time. It’s considered the best practical choice because it’s remarkable efficient on the average, having an expected time of &theta;(n*lgn).
</p><p>
In this blog we are going to:
</p><p>
What is quick sort and write pseudocode for the same
</p><p>
Explain quick sort with an example
</p><p>
Analyze the complexity
</p><p>
So, let’s begin with what is quick sort and write a pseudocode for the same.
</p><p>
Quick sort, like <a href="https://makemetechie.com/2018/02/28/maximum-subarray-problem-using-brute-force-divide-and-conquer/">merge sort </a>, applies divide and conquer logic for sorting numbers. We follow the three basic rules for divide and conquer here as well.
</p><p>
<strong>Divide</strong>: Divide the array into subarray. We will use partition function for this purpose. We will take a pivot in the array and divide the array into parts from the pivot element.
</p><p>
<strong>Conquer</strong>: Next we are going to use the quick sort algorithm to sort numbers in the subarray. Divide and conquer algorithm is useful for quick sort because the sub arrays form a similar problems as the main array. We recursively call the subarray to sort the array
</p><p>
<strong>Combine</strong>: Next we are going to combine the array back to get the sorted array, which is already sorted in conquer method.
</p><p>
<strong>Pseudocode for quick sort</strong>
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/5d0168abb4676a9487bf22d2d43864e9.js"></script>
</p><p>
In the first pseudocode we will see quick sort algorithm. Given an array A[p…r] where p is the first element and q is the last element of the array, we will partition the array at q using partition algorithm making the array as A[p...q…r].Next we are going to subdivide the partitioned array into subarray and sort it in the Partition algorithm as explained below.
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/27363080b4837111231e5cc31b2271ea.js"></script>
</p><p>
In the partition algorithm above we pass array A, starting index p and ending index ‘r’ to the array. Usually we take the last element as the pivot element, however we can take any element as the pivot element. For the simplicity we will take the last element of the array as pivot element. Next we take an index ‘i’ which has an initial value less than the zero index of the array, further we will parse the complete array till the pivot element and once we find the value of pivot element greater than the current element we will increment the value of ‘i’ and exchange current element with the A[i] element. Once the entire array has been parsed we will finally change the pivot value with the current ith value to get the desired index of the pivot.
</p><p>
We’ll further explain the above algorithm with an example to clear all the doubts. Consider the following example:
</p><p>
<img class="alignnone size-full wp-image-92 center-div" src="\assets\images\Content\quicksort.png" alt="" width="290" height="2000" />
</p><p>
<strong>Analyzing the complexity of quick sort algorithm</strong>
</p><p>
The running time of quicksort depends on the number of elements left for partitioning and current element used for partition. If less number of elements remains the algorithm runs as fast as merge sort. If large number of elements remains then it can run slow as insertion sort.
</p><p>
<strong>Worst Case Analysis</strong>
</p><p>
Worst case behavior is observed when all the elements are less than the pivot element. Since we are dealing with an array of n elements where the pivot is not parsed, hence we have an array with (n-1) elements. Partition happens in &theta; (n) time and the recurrence for the running time is
</p><p>
T(n) = T(n-1) + &theta; (n)
</p><p>
Solving the above recurrence with substitution method gives us &theta; (n*n) .Therefore, the running time of quick sort is no better than insertion sort.
</p><p>
<strong>Best Case Analysis</strong>
</p><p>
In the most even partition, it produces 2 subproblems each of size no more than n/2. One of n/2 and other of n/2 -1. In this case quick sort runs much faster. Recurrence running time is given as:
</p><p>
T(n) = 2T(n/2) + &theta; (n)
</p><p>
Using masters theorem case 2 the recurrence solution is T(n) = &theta; (n*lgn)
</p><p>
That’s all folks! We are done with quick sort. We’ve created a pseudocode for the same, understood it with an example and analyzed its complexity.
</p>
