---
layout: post
title: "Getting Started With Algorithm And It’s Analysis | Insertion Sort "
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\foundation_banner.png
---

<p>
In this blog post we’ll work on a simple logic, convert that logic into algorithm and then analyze that algorithm. This post will work as a foundation course for the further blog post in line.
<p></p>
We’ll use the logic of<strong> insertion sort</strong> , explain the algorithm , analyze the complexity in best, worst and average case and finally convert it into a python code.
<p></p>
Pseudocode and its terms are defined here.
<p></p>
Now, suppose you have some cards in your hand. Let it be 3 of clubs, 7 of hearts, 5 of diamond and 4 of hearts. We are not concerned with the suits but it’s the number that excites us. 3,7,5,4. But these look so unarranged and as the cards in our hands increase, it will be difficult to manage , so we arrange them first.
<p></p>
From the cards available to us { 3,7,5,4 }.We’ll put all these cards on left hand and all the sorted cards on the right hand. We’ll take the first number in the deck i.e. 3. Since we don’t have any other number to compare with, we’ll say it’s sorted for now and put it in right hand. Next,  let’s move on to second number i.e. 7. We’ll compare 7 with 3, is 3 greater than 7, nope so we have numbers in the sorted form as {3,7} and put it into right hand. Moving on to the next number, we’ll take next number from our left hand i.e. 5 and start comparing 5 with the numbers on the right hand i.e. {3,7}. First is 5 greater than 7, yes, swap these two numbers. Next compare it with 3, is 5 greater than 3, nope, we won’t swap numbers. Finally, we have one last number in our left hand i.e 4, compare them with 7 first, then 5 and finally 3 to receive the sorted array as {3,4,5,7}.
<p></p>
The following is visualized as below
<p></p>
<img class="aligncenter wp-image-53 center-div" src="\assets\images\Content\insertionSort2.png" alt="" width="250" height="858" />

&nbsp;

<p></p>
This logic above is called insertion sort. For a given set of input numbers (which are random cards in above case) we get a sorted output arranged in ascending or descending order.
<p></p>
<strong>Input</strong> : A sequence of n numbers (n1, n3, n2, n5… n100)
<p></p>
<strong>Output</strong>: A reordering of numbers (n1 ,n2 ,n3 ,n4…,n100)
<p></p>
We will write a <strong>pseudocode</strong> for the above logic, and further we will write a <strong>program</strong> in python for the same and then <strong>analyze</strong> the complexity of the algorithm.
<p></p>
Insertion sort is efficient algorithm for sorting a small number of elements. Pseudocode for insertion sort is shown below as<strong> INSERTION-SORT</strong> taking array A as input containing sequence of numbers randomly arranged.
<p></p>
<script src="https://gist.github.com/NavneetPrakashSingh/c298ff361b330765d97883d8a8baee4f.js"></script>
<p></p>
The above pseudocode gives use a fair understanding of how insertion sort works. The outer loop parses over the entire array and the inner loop parses over the values starting from i-1 to all the way to zero index of the array. Further we check if the inner value is greater then we don’t swap but if the value is smaller we swap those values.
<p></p>
<strong>Getting started with analyzing an algorithm</strong>
<p></p>
Suppose you are given a limited set of resources and a fairly large input. Usually resources such as memory, communication bandwidth or computer hardware are of primary concern, but most often it’s the computational time that we have to measure. Now for a limited set of resources, how well your algorithm performs is the main question. Is your algorithm efficient enough to perform within the given set of input and resources, that’s why we need to analyze the algorithm.
<p></p>
Before we analyze an algorithm, we must have a model of implementation technology that we will use, including a model for the resources of that technology and their cost. For these post we are going to use the RAM ( random access machine) model of computation. In RAM model the instructions are executed one after another.
<p></p>
<strong>Analysis of insertion sort</strong>
<p></p>
The time taken by insertion sort depends upon the input: sorting a thousand numbers take more time than sorting ten numbers. Moreover, insertion sort can take different time to sort 2 sequences depending upon how sorted they already are.
<p></p>
In short, time taken by the algorithm grows with the size of the input, so we need to define the term “running time” and “size of the input” more carefully.
<p></p>
<strong>Analyzing insertion sort algorithm</strong>
<p></p>
<script src="https://gist.github.com/NavneetPrakashSingh/0d4f0674397f02c19766cbdd17fc162e.js"></script>
<p></p>
Here we have cost of executing the particular statement and how many times is that statement being executed. We also have tj which donates the number of times the for statement is executed for that value of j.
<p></p>
We need to remember that sum of first n terms is given as n*(n+1)/2
<p></p>
<strong>Best Case Analysis</strong>
<p></p>
Let us consider the above algorithm for best case scenario. For which all the elements are sorted. We know that first loop will run n times, second loop will run (n-1) times because tj will be 1 when all the elements are already arranged in order. Since the elements will not be swapped, the algorithm will not enter lines 3,4,5.
<p></p>
T(n) = c1*n + c2*(n-1) + c3*0 + c4*0 + c5*0
<p></p>
T(n) = n*c1 + n*c2 – c2
<p></p>
T(n) = (c1 + c2)*n – c2
<p></p>
Hence, we can express it linearly as an-b and is a<strong> linear function</strong> of n
<p></p>
<strong>Worst Case Analysis</strong>
<p></p>
T(n) = c1*n + c2*(n(n+1))/2 + c3*(n(n-1)/2) + c4*(n(n-1)/2) + c5*(n(n-1)/2)
<p></p>
T(n) = n^2 * (c2/2 + c3/2 + c4/2 + c5/2) + n(c1 + c2/2 – c3/2 – c4/2 – c5/2)
<p></p>
Hence can be expressed as : an^2 + bn + c. Hence worst case is a<strong> quadratic function of n</strong>.
<p></p>
<strong>Notes related to analyzing insertion sort:</strong>
<p></p>
In our analysis we considered both the best cases and the worst case of insertion sort, one where the input was already sorted and other where the input was reversed sorted. For the remaining post we will focus on the average case which is roughly same as  the worst case for two reasons.
<p></p>
First, the worst case scenario gives the upper bound for the algorithm to finish. Maximum time the algorithm will take to complete its execution, we usually consider that it won’t take more time than worst case scenario.
<p></p>
Secondly, many times we will hit the worst case scenario. For example, when we are searching something in a database, and it will occur that the information is not present in the database, hence a worst case scenario is hit again.
<p></p>
We usually consider an average case which is roughly as bad as worst case. In insertion sort the average case comes out to be a quadratic function making it as bad as worst case scenario.
<p></p>
<strong>Order Of Growth</strong>
<p></p>
We shall simplify the above analysis, since we are only interested in the rate of growth or the order of growth of that running time. We therefore consider the leading formula i.e a*n^2, since lower order terms are relatively insignificant for large values of n. Hence we write that insertion sort has a worst-case running time of theta(n^2).
<p></p>
We usually consider algorithm to be more efficient which has a lower order of growth.
<p></p>
Python program for the same is mentioned <a href="https://github.com/NavneetPrakashSingh/Getting-Started-With-Programming/blob/master/insertionSort.py">here </a>
<p></p>
That’s all for now! We just created our first logical program/ algorithm, converted that logic into pseudocode, analyzed that pseudocode and wrote a python program for the same.
<p></p>
This was for a basic algorithm, further we will start with divide and conquer algorithm, analyze their efficiency and take three basic examples in our divide and conquer series.
<p></p>
&nbsp;
