---
layout: post
title: "Min-Max Sum"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\programming.png
---

<p>
In this blog post we are going to discuss an interesting problem on hacerrank available at <a href="https://www.hackerrank.com/challenges/mini-max-sum/problem">hackerRank link</a>
<p></p>
This question is taken from hackerrank warmup challange. Input statement states that you are given 5 numbers and you have to add 4 out of those 5 numbers to find the max and min values from that set of sum.
<p></p>
The sample input and output is given as follow
<p></p>
Input : A single line of 5 spaced integers
<p></p>
Output : 2 spaced integers containing the minimum value and maximum value
<p></p>
Sample input and output
<p></p>
<strong>Input</strong> : 1 2 3 4 5
<p></p>
<strong>Ouput</strong> : 10 14
<p></p>
<strong>Explaination</strong> : Sum of 1+2+3+4 = 10 , similarly sum of 2+3+4+5 = 14
<p></p>
This problem can have many solution. We will see all the possible ways, build a pseudo code and write a program related to the same using vector programming in c++.
<p></p>
First approach to solve the is to find the sum of all the element in a loop and use another loop to store the sum-ith element value in a different array, and finally to sort the array and take the first and last value of the array to get the max and min value of the array.
<p></p>
<script src="https://gist.github.com/NavneetPrakashSingh/25d867ab9e836b7eb94574164ccb634e.js"></script>
<p></p>
Another approach is to keep on parsing the loop containing the array values and find the min and max value while parsing the array as shown in the pseudocode
<p></p>
<script src="https://gist.github.com/NavneetPrakashSingh/a281e5117e30602c102315f67e7040db.js"></script>
<p></p>
Using any of the above approach we can solve the problem stated. The program link implemented in C++ using vector programming is shown <a href="https://github.com/NavneetPrakashSingh/Getting-Started-With-Programming/blob/master/Program%20For%20Max%20Sum%20-%20HackerRank-Warmup.cpp">here</a> available on github.
<p>
