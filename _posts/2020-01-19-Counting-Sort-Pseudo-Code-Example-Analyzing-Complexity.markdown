---
layout: post
title: "Counting Sort | Pseudo Code | Example | Analyzing Complexity"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\sort.png
---

<p>
Till now we have introduced <a href="https://makemetechie.com/2018/02/24/getting-started-with-algorithm-and-its-analysis-insertion-sort/">insertion sort</a>, <a href="https://makemetechie.com/2018/02/24/algorithm-analysis-using-divide-and-conquer-approach/">merge sort</a>, <a href="https://makemetechie.com/2018/03/05/heap-sort/">heap sort</a> and <a href="https://makemetechie.com/2018/03/06/quick-sort-pseudo-code-example-analyzing-complexity/">quick sort</a>. Out of which we know that merge sort and heap sort has a worst case of O(n*lgn) and quick sort has an average case of O(n*lgn).
<p></p>
Till now all the above algorithms mentioned use comparison as a medium to arrange elements in ascending or descending order. Now we are going to work on a very interesting algorithm which <strong>does not uses comparison as a medium to sort the numbers</strong>. It’s called<strong> counting sort</strong>. For a n sequence of numbers it runs in omega(n*lgn) time. Counting sort sorts the element in linear time.
<p></p>
In this blog post we are going to
<ul>
<li>Write a pseudocode for counting sort</li>
<li>Explain it via example</li>
<li>Analyze the complexity of the algorithm and write a c++ program for the same.</li></ul>
<p></p>
<strong>Getting started with counting sort</strong>
<p></p>
Counting sort assumes that each of the given n input elements is an integer in the range of 0 to k. This type of sorting works for positive values only. In this algorithm we are given an array A[1,2,3…n] we require an auxiliary array and sorted array. Auxiliary array has size equal to max value in the array A, and sorted array has the same size as that of array A.
<p></p>
Next we are going to write a <strong>pseudo code</strong> for the same.
<p></p>
<script src="https://gist.github.com/NavneetPrakashSingh/be7ffa87ff9d06bdb068a59ca1889cf8.js"></script>
Now we have written a pseudocode for counting sort. The explanation of the algorithm can be stated via following example.
<p></p>
<img class="alignnone size-full wp-image-107 center-div" src="\assets\images\Content\countingsort.png" alt="" width="280" height="1457" />
<p></p>
As shown in the above example we have an auxiliary array C and initially place all the value of C as 0. Next we take the elements of unsorted array A and use it as indexes for auxiliary array. Then we add the values at current position and next position of the array and use it as the index for sorted array to get our sorted array as shown in above example.
<p></p>
<strong>Analyzing counting sort</strong>
<p></p>
We have used 4 for loops however since they are used in parallel. At worst the loop is parsed through A.length which gives sorting time as θ (n) where n is A.length.
<p></p>
An important property of counting sort is that it is stable. Numbers with the same value appears in the output array as it appears in the input array. Normally the property of stability is important only when data are carried around with the element being sorted. Such property proves that counting sort is stable.
<p></p>
That’s all folks! We have seen an algorithm which sorts data in linear time only when the elements of the array are positive.
<p>
