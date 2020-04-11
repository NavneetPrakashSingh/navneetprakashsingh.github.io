---
layout: post
title: "Maximum Subarray Problem Using Brute Force, Divide And Conquer"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\divideConquer.png
---

<p>In this blog post you would learn</p>
<ul>
<li>Very interesting example of maximum subarray problem</li>
<li>
Discuss the algorithm, pseudocode, analyze the complexity and write a program related to solving maximum subarray problem using <strong>brute force technique</strong>
</li>
<li>
Discuss the algorithm, pseudocode, analyze the complexity and write a program related to solving maximum subarray problem using<strong> divide and conquer algorithm</strong>
</li>
</ul>
<p>
Suppose you are working in a firm that analyzes the behavior of bitcoin in last 10 hours and you are assigned a task to check what would have been the right time to invest and right time to withdraw your bitcoins to have the maximum profit. Of course you want to “buy low , sell high”. You want to buy at the lowest price and sell at the highest price in order to maximize the profit. However, that’s not always the case. Let us consider the following example.
</p><p>
<img class="alignnone size-medium wp-image-64 center-div max-width" src="\assets\images\Content\bitcoinPriceAnalysis.png" alt="" style="width:80%" />
</p><p>
In the above graph x-axis shows dates and y-axis shows price of bitcoin.
</p>
<img class="alignnone size-medium wp-image-65 center-div" src="\assets\images\Content\bitcoinTable.png" alt="" width="240" height="300" />
<p>
In the above table we show the date, price and change of price of bitcoin. We see that even though the minimum price of bitcoin is on 25<sup>th</sup> Feb and maximum price of bitcoin is on 22<sup>nd</sup> Feb, however in order to maximize the profit, one should buy the stock on 23<sup>rd</sup> Feb and sell it on 24<sup>th</sup> Feb which is neither the highest nor the lowest price.
</p><p>
<strong>Brute-Force Approach</strong>
</p><p>
If we try each and every possible combination to find the maximum subarray, we can find the maximum subarray. Like taking the array with 1 size, then taking 2 size subarray and then till n size subarray. If we consider the above table and take the change values tuples only, we can find the maximum subarray. Let us consider the following algorithm
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/d9080dbe9d191f6c009decca30e8e6f1.js"></script>
</p><p>
<strong>Analyzing the complexity of the above algorithm</strong>
</p><p>
The complexity of the above algorithm is bigO of n^3. Since the inner most loop has to be executed n^3 times in order to complete the execution. This type of algorithm, even though it solves the problem, is not very efficient. We’ll look at a more efficient approach using divide and conquer.
</p><p>
<strong>Divide and conquer Approach</strong>
</p><p>
Divide and conquer suggests that we divide the array into two equal subarrays of equal size as possible. Suppose we have array of A[low…high], which is divided into A[low…mid] and A[mid+1…high].In order for any contiguous subarray, it must lie in the following places:
</p><p>
Left part of subarray A[low…mid]
</p><p>
Right part of subarray A[mid+1…high]
</p><p>
Middle part of subarray A[low…high]
</p><p>
We can easily find a maximum subarray crossing the midpoint in linear time in the size of subarray A[low..high]. This problem is not a smaller instance of our original problem, because it has an added restriction that it must cross the midpoint. Once we find the maximum subarray all we need to do is to combine the array. In the pseudocode below
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/f39b7889a8abe2122878dfa950509791.js"></script>
</p><p>
In the pseudocode we are given a function Maximum-mid-crossing-subarray which takes an array A, mid, low and high values that determines the max sum in the left, right and mid crossing of the array.
</p><p>
The procedure works as follows. Line number 20-25 determines the maximum subarray on the right side subarray and line number 27-32 determines the maximum subarray on the left side of subarray. Finally, line 34 returns max left index, max right index and sum crossing the mid of subarray.
</p><p>
We write another function called Maximum-subarray in pseudocode, in line 3-4 we write the base case of the function. If the array has only one element, then the array bottoms out and hits the base case of the array. Line number 6-9 divides the algorithm into subparts. Line number 10-15 combines the subarray and determines whether left subarray or right subarray or if the maximum subarray crosses the middle part of the array.
</p><p>
<strong>Analyzing divide and conquer algorithm</strong>
</p><p>
As we did when we analyzed merge sort <a href="https://makemetechie.com/2018/02/24/algorithm-analysis-using-divide-and-conquer-approach/">here</a>, we made the assumption that the original problem size is a power of 2, so that all subproblem sizes are integers. We donate by T(n) the running time of Maximum-subarray on a subarray of n numbers. When we hit the base case it is time constant and reached in
</p><p>
T(n) = theta (1)
</p><p>
Each of subproblem from line 7-9 is of size n/2 (since array is divided into 2 equal parts), so we spend T(n/2) time solving each of them. Since we solve right and left subarray we have 2T(n/2). Maximum-mid-crossing-subarray takes theta(n) time. For the recursive case we have
</p><p>
T(n) = theta(1)    if n=1
</p><p>
2T(n/2) + theta(n) if n>1
</p><p>
The recurrence is same for merge sort and this recurrence has a solution of T(n) = theta(n lgn), where lg is log base 2.
</p><p>
Thus, we see that the divide and conquer approach yields a more efficient solution than brute force approach.
</p><p>
Program for maximum subarray using brute force method can be found <a href="https://github.com/NavneetPrakashSingh/Getting-Started-With-Programming/blob/master/Program%20To%20Implement%20Maximum%20Subarray%20Problem%20Using%20Brute%20Force.cpp">here</a>
</p><p>
Program for maximum subarray using divide and conquer can be found <a href="https://github.com/NavneetPrakashSingh/Getting-Started-With-Programming/blob/master/Program%20To%20Implement%20Maximum%20Subarray%20Problem%20Using%20Divide%20And%20Conquer.cpp">here</a>
</p><p>
That’s all for now! We looked at solving maximum subarray problem using brute force which would solve in theta(n^3) time and solved maximum subarray problem using divide and conquer approach in theta(n lgn) time. Next we will try to solve the problem in theta(n) time.
