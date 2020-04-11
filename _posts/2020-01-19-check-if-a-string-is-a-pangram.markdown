---
layout: post
title: "Check if string is a pangram or not using python | Programming Question"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\programming.png
---

<p>
Before we begin writing code and algorithm related to pangram, we need to understand what pangram is. Pangram are those sentences which contain all the alphabets. For example the sentence “ the quick brown fox jumps over the lazy dog” contains all the alphabets and is a pangram. Our task in this question set is to identify whether a sentence is a pangram or not. This question was taken from hackerRank and can be found <a href="https://www.hackerrank.com/challenges/pangrams/problem">here</a>. Within the blog post we will
</p><p>
<ul>
<li>Go through a basic logic to identify a pangram</li>
<li>Write a pseudocode related to the same and a sample test case</li>
<li>Write a python program of the same</li>
</ul>
</p><p>
<strong>Basic logic of the program.</strong>
</p><p>
In the input we will be given a string which may or may not be a pangram. Basic logic is as follow
We just want to check if the string contains all the alphabets or not, we don’t need spaces, so we will initially remove all the spaces of the string. Suppose that string s is being passed the to function, we will use replace function on the string to replace spaces with blanks
</p><p>
Next, there might be high possibility that the string contains duplicate characters like the alphabet ‘e’ might be recurring in the pangram sentence, so we need to check that case as well. For that we will be using join function and create a set s for that, i.e  “”.join(set(s)) 
</p><p>
Next, we will convert the string characters to ascii values, we know that sum of all the alphabets of the string comes out to be 2847. If the sum is equal to 2847, it’s a pangram else its not.
</p><p>
<strong>Pseudocode for pangrams</strong>
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/97af7d334081c478ae8793b2435fe73f.js"></script>
The pseudocode is shown and it’s explanation is shown above.
</p><p>
Python program for the same is shown <a href="https://github.com/NavneetPrakashSingh/Getting-Started-With-Python/blob/master/HackerRankPython-Panagrams.py">here </a>
</p><p>
That’s all for now! We came across a beautiful problem on string and explained it’s logic, wrote a pseudocode for the same and wrote a python program.
</p>
