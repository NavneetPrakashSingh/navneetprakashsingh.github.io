---
layout: post
title: "Caesar Cipher in Python | Programming Question"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\programming.png
---

<p>
Suppose you want to send a message to another person and you want that only that person should be able to read the message and no one else, what would you do? One of the possible solution is to encrypt it using a key and such that only the other person knows what the key is. You would encrypt it using the key and the other person having the same key would be able to decrypt it.
</p><p>
One such famous and simple algorithm was developed by Julius Caesar know as Caesar cipher and in this blog post we will
</p><p>
<ul>
<li>Discuss the algorithm used in Caesar cipher</li>
<li>Write a pseudocode related to the same</li>
<li>Write a program in python related to the same</li>
</ul>
</p><p>
Before we begin, this question has been taken from hackerrank and the link is available <a href="https://www.hackerrank.com/challenges/caesar-cipher-1/problem">here </a>
</p><p>
You can learn more about Caesar cipher <a href="https://en.wikipedia.org/wiki/Caesar_cipher">here </a>
</p><p>
<strong>Algorithm used in Caesar cipher</strong>
</p><p>
The basic algorithm used in Caesar cipher is you are given a string to encrypt and a key value which is integer. You must shift each value in the given string by the position in alphabetic order according to the key. Suppose you have key as 2 and you have string as ‘abc’, now you must shift every value of the string by that 2 such that a->c, b->d, c->e. Hence, the encrypted string will become ‘cde’
</p><p>
Do remember only alphabets must be shifted and nothing else like special characters, or dashes must not be shifted and hence remains same.
</p><p>
<strong>Basic Algorithm Used </strong>
</p><p>
We will take a list of character containing only alphabets in lower case. We will 
</p><p>
Initially take an array containing only alphabets in lower case, we would use the position of the array to calculate the final string further.
</p><p>
Parse the given string in the list. Initially check if the value is lower case, upper case or not a character. If it’s in upper case we would change it to lower case and put a flag as true that its upper case. Once we increment the position by key passed we would change the case back to upper case and add it to the new string.
</p><p>
If the value of the string is lower case and is in the array of alphabets, we would take the index of the alphabet. Next, we would add the key to the string and take remainder after dividing it with 26. We do this because to take care of the upper count. Suppose we have ‘z’ in the string and we need to increment it by 2, it shouldn’t give an error but rather it should give ‘b’, in that case we need to take remainder when divide by 26 (26 because there are 26 alphabets).
</p><p>
Finally, we return the string and pseudocode is provided as below
</p><p>
<strong>Pseudocode for Caesar cipher</strong>
</p><p>
<script src="https://gist.github.com/NavneetPrakashSingh/11900722307741a220f11c3ce421acf8.js"></script>
</p><p>
We wrote our pseudocode above and explained it above. Now we write a program in python related to the same which can be found <a href="https://github.com/NavneetPrakashSingh/Getting-Started-With-Python/blob/master/HackerRankPython-CeasarCipher.py">here </a> That's all for now! There are many other ways of implementing the Caesar cipher, so make sure to explore other ways as well.
</p>
