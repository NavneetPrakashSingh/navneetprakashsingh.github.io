---
layout: post
title: "Getting Started With Sorting"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\sort.png
featured: true
---

<p>
In this series of blog post we are going to understand various <strong>approaches</strong> for sorting a set of numbers. Given an input of numbers we are going to display the output of numbers in ascending or descending order using various algorithms. In this series we will be dealing with the following algorithms:
</p><p>
<ul><li>
<a href="/Getting-Started-With-Algorithm-And-It-s-Analysis-Insertion-Sort/">Insertion Sort</a>
</li><li>
<a href="/Algorithm-Analysis-Of-Merge-Sort-Using-Divide-And-Conquer-Approach/">Merge Sort</a>
</li><li>
<a href="/Heap-Sort-Pseudo-Code-Example-Analyzing-Complexity/">Heap Sort</a>
</li><li>
Quick Sort
</li><li>
Bucket Sort
</li><li>
Radix Sort
</ul>
</p><p>
Each of the above algorithm solves the following problem:
</p><p>
<strong>Input</strong>: A sequence of n numbers arranged in random manner (n1,n2,n5,n3…..n100)
</p><p>
<strong>Output</strong>: Reordering of numbers in ascending or descending order (n1,n2,n3…n100)
</p><p>
For solving the above data structure we generally use arrays, but some of the algorithms will use linked list or trees to make it easier and effective to solve sorting problems.
</p><p>
<strong>Why algorithm to use and when ?</strong>
</p><p>
By going through the above links we have a fair understanding of sorting algorithms. The worst case of insertion sort is theta(n*n). Inner loop are being accessed frequently making it asymptotically weak when we have a large number of elements to consider. However if number of elements are small it’s a fast sorting algorithm.
</p><p>
Next we have merge sort which has fairly better asymptotic running time of theta(n lgn), but the merge procedure it uses does not operate in every place.
</p><p>
Next we have heap sort which sorts n random numbers in O(n lgn) time. It uses an important data structure called heap.
</p><p>
Next we have quick sort which is also used to sort n numbers but its worst-case running time is theta(n*n), however its expected running time is theta(n lgn).Like insertion sort it has a hidden constant factor in its running time. It’s a popular algorithm for sorting large input arrays.
Insertion sort, merge sort, heap sort and quick sort all of the mentioned algorithm are comparison algorithm. Further we will study bucket sort and radix sort which sorts on the basis of the index instead of comparing element with each other, such type of algorithm takes linear time to sort elements.
Finally we’ll have a look at all the algorithms with their <strong>worst case and average case</strong> running time.
</p><p>
<!--Table-->
<table class="table">

    <!--Table head-->
    <thead>
        <tr>
            <th>Algorithm</th>
            <th>Worst-case Running Time</th>
            <th>Average-case Running Time</th>
        </tr>
    </thead>

  <!--Table head-->

    <!--Table body-->
    <tbody>
        <tr>
            <td>Insertion Sort</td>
            <td> &theta; (n*n)</td>
            <td>  &theta; (n*n)</td>
        </tr>
         <tr>
            <td>Merge Sort</td>
            <td> &theta; (n*lgn)</td>
            <td> &theta; (n*lgn)</td>
        </tr>
         <tr>
            <td>Heap Sort</td>
            <td>O(n*lgn)</td>
            <td>-</td>
        </tr>
         <tr>
            <td>Quick Sort</td>
            <td> &theta;(n*n)</td>
            <td> &theta;(n*lgn)</td>
        </tr>
        <tr>
            <td>Counting Sort</td>
            <td> &theta;(k+n)</td>
            <td> &theta;(k+n)</td>
        </tr>
         <tr>
            <td>Radix Sort</td>
            <td> &theta;(d(n+k))</td>
            <td> &theta;(d(n+k))</td>
        </tr>
         <tr>
            <td>Bucket Sort</td>
            <td> &theta;(n*n)</td>
            <td> &theta;(n)</td>
        </tr>


    </tbody>
    <!--Table body-->

</table>
<!--Table-->
</p>
