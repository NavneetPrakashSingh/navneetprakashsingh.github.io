---
layout: post
title: "Algorithm Analysis Of Recurrence/Recursive Relations Using Substitution Method | Part 2 of 4 |"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\algo_banner.png
---

<p style="text-align: center;"><strong>Analysis of a recurrence relation using Substitution Method</strong></p>
<p><strong>Objective</strong>: in this blog post we will discuss how to analyze the complexity of a recurrence relation using substitution method. Steps and how to make a good guess related to the same.</p>
<p>Substitution method, as the name implies we substitute different values to find the complexity of the recursive function. <strong>Two important steps</strong> related are as follow:</p>
<ol>
<li>Guess a particular solution in asymptotic form for the given recurrence relation.</li>
<li>Verify the guess using mathematical induction and find the value of constant C.</li>
</ol>
<p>Let us understand substitution method using an example.</p>
<p>Consider the recurrence relation:</p>
<p>
<script src="https://gist.github.com/NavneetPrakashSingh/70377dbe88618d68515f28af18f3385e.js"></script>
</p>
<p>We wish to prove that T(n) = O(n<sup>2</sup>), then its sufficient to show that T(n) &lt;= Cn<sup>2</sup> . Hence the <strong>first part</strong> of substitution method is to make an assumption. So we make an assumption that T(a) &lt;= Ca<sup>2</sup> in order to prove T(n) = O(n<sup>2</sup>). Hence,</p>
<p>T(a) = Ca<sup>2 </sup>where 1 &lt; a &lt; n-1</p>
<p>The <strong>second step</strong> is to prove our assumption correct using mathematical induction. By substituting the induction hypothesis we get,</p>
<p>
<script src="https://gist.github.com/NavneetPrakashSingh/c55cd02c03e16a96376c0a9096a9e0c1.js"></script>
</p>
<p>We just proved using induction a recurrence relation using substitution method. We made an assumption and then proved our assumption is right using mathematical induction.</p>
<p><strong>Trick for making a good guess</strong></p>
<p>If a recurrence relation is of the form i.e.</p>
<p>T(n) = aT(n/b) + F(n)</p>
<p><strong>Case 1</strong> :&nbsp; If a = b = 2, then</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; T(n) = O(F(n)log n) is a good guess</p>
<p><strong>Case 2</strong> :If a = 1 and b = any value, then</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; T(n) = O(log n) is a good guess</p>
<p><strong>Case 3</strong>: If a != 1 and b &gt; a, then</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; T(n) = O[f(n) * n] is a good guess</p>
<p>Now we know how to make a good guess in a substitution method.</p>
<p>That&rsquo;s all folks. Time for a wrap-up. We have studied how to find complexity of a recurrence relation using substitution method and tried to understand what a good guess is. In the next tutorial we will discuss the next method i.e. <strong>Iterative method</strong> to find the complexity of a recurrence relation.</p>
