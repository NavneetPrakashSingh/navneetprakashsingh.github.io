---
layout: post
title: "Test Driven Development | Code Quality"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\code_quality_banner.png
---

Within the previous topic we have a brief overview regarding dependency injection and we had a look at a poor code and we changed it to an object oriented code which was robust and cohesive. Link can be found here .

&nbsp;

Within this blog post we would be looking at the same code base of adding sum of two numbers and apply test driven development to the code base. Before that we would look at the following aspects:

<ul>
 	<li>What is test driven development?</li>
 	<li>Tools needed to apply test driven development</li>
 	<li>Apply test driven development to a code</li>
 	<li>When to apply test driven development</li>
</ul>
<h1>What is test driven development?</h1>
Before we jump to an example, lets understand what test driven development is using a real life example. Consider a Formula 1 pit crew whose job is to get the car serviced in minimum time as possible and consider a car service company that lazily gets your car serviced. There is a difference between these two approaches. In the first approach, everything is crosschecked twice and everything is done in harmony. No chances of mishaps and a view like this is seen as shown below:

<img class="center-div aligncenter size-medium wp-image-223" src="\assets\images\Content\pitcrew.jpg" alt="" width="196" height="300" />

Whereas, in the lazy car service, people are breaking your car while servicing and applying patches wherever possible. Something like the car below:

<img class="center-div alignnone size-medium wp-image-224" src="\assets\images\Content\duckTape.png" alt="" width="300" height="200" />

Similar is the approach with your code. You can choose to write it as a maintainable code where even if someone else works on it, still works or you can choose it to write a code that is often required to be maintained and is applies patches so that it works.

&nbsp;

To create your code similar to the F1 service, you have to include test driven development to your project. One of the main things to keep in mind is that the entire process is an agile process. You write a certain test case, then write your code. Then write new test cases and then modify your code. The entire process is a continuous cycle which gives advantage to you in the way such that whenever there is another developer working on the project with you and does changes to your code, it must pass the unit test cases.

&nbsp;

&nbsp;

<h1>What are the tools needed for test driven development?</h1>
<h3>Junit for unit test</h3>
Junit is used for testing unit code that uses Java as a programming language. It takes the code in isolation and runs the code against the given test cases. It would show which all test cases failed and why they failed. Cheat sheet related to Junit is shown here.
<h3>Mockito for REST API testing</h3>
Mockito allows developers to create and test objects (mock objects) in unit test for test driven development.
There are many other tools to write code using test driven development depending upon the programming language.
<h3>Apply test driven development to existing code.</h3>
Let us consider the example of adding two numbers as shown in previous post. We want to make sure that it is able to add two numbers like two positive numbers, two negative numbers, one positive and one negative number. We are going to approach it by:
<ul>
 	<li>Creating a separate test layer within the project</li>
 	<li>Next we are going to create mock objects which would simulate the behaviour of a real object and call it MockSum.java</li>
 	<li>Next create a separate class for writing test cases and call it SumTest.java within the test layer.</li>
 	<li>Next add Junit library to the project by following steps mentioned in the next section.</li>
</ul>
<h3>Adding Junit to project</h3>
Simply right click on the main project and click on Build path. Once the build path sub menu appears, select add library and select Junit. Click on next and it would add the necessary files for Junit.

Refer the following screenshot for doubts.

<img class="center-div alignnone size-medium wp-image-225" src="\assets\images\Content\Junit.png" alt="" width="300" height="241" />

Now we have the Junit within our project, we want to write mock values and test cases for the same.

Mock values are a simulation of the real object and act as input for the code you are testing. These are then tested against the real values and expected values that are written in the test file.

Code snippet for mock objects are shown below:

<script src="https://gist.github.com/NavneetPrakashSingh/03b277f559717542c396ade58cca177b.js"></script>

Code snippet for test file is shown below:

<script src="https://gist.github.com/NavneetPrakashSingh/ef3088febfe884f64e8fdd5b9cc4b17b.js"></script>

What we are doing is creating a test file that takes in the mock objects as input and testing our values using Junit against the expected values and real values.

Using such type of approach is test driven development. We start of writing test cases, then write the code against it, then write test cases again and then write code against it.

Code is also available at github: https://github.com/NavneetPrakashSingh/Code-Quality

&nbsp;

That’s all for now! Now we have a firm understating of dependency injection and test driven development, we can now focus on SOLID principles and apply these principles on examples.
