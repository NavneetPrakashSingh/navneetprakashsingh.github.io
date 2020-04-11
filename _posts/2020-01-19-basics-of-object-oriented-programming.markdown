---
layout: post
title: "Basics of Object Oriented programming - Part 1"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\ds_banner.png
---

<h1>Basics of Object Oriented Programming</h1>
Within this introductory tutorial, we are going to introduce you with the basics of object oriented programming. We are going to cover the following topics:
<ul>
 	<li>What does classes consist of?</li>
 	<li>What to inherit?</li>
 	<li>What is main used for?</li>
 	<li>Instance variable vs local variable</li>
 	<li>How to decide if a class should extend another class?</li>
 	<li>Uses of inheritance</li>
 	<li>Other points to keep in mind</li>
 	<li>Example related to object oriented programming</li>
</ul>
<h3>What does classes consist of?</h3>
A class is like the blueprint of the house, they contain everything necessary to create the house, to define the structure of the program. Within that blueprint, it contains fields/ instance variable and member functions. These two things shape the entire blueprint or shall we say as the class.

Consider another example, suppose we have vehicle, now a vehicle can be a truck, car or bicycle. Here, vehicle is an example of class and various types of vehicles are the subclasses. Now, these classes cannot be accessed without an object.

Hope you have a brief understanding of classes. We would discuss classes and objects later in this tutorial to uderstand better.

<h3>What to inherit?</h3>
<ol>
 	<li>Look out for things that classes have in common</li>
 	<li>Abstract out those features</li>
 	<li>Override or extend methods that are useful</li>
</ol>
Suppose you have an animal class, having function move, eat and getName. Now there are another two classes called Bird which moves and have a member function as move and dog which has a member function as dig hole.

Now, digHole method is not present in animal class, so it would extends the animal subclass using extends keyword. Whereas, the bird subclass contains the method present in the superclass and would override the animal class's move method.

If a subclass inherits a superclass, then all of the member function and variables are defiend in the subclass.

In the subclass, you define only the changes related to the subclass.

<h3>What is main for?</h3>
Main are used to create objects that interact with the main class.

Example from github snippets

<h3>Instance variable vs local variable</h3>
Instance variable are created inside classes and local variable are created inside methods.
<h3>How to decide if a class should extend another class?</h3>
Use "Has A" vs "Is A" method

Is A helps to decide if a class should extend another class. Example: is Dog an Animal, if answer comes out to yes then it should probably inherit the superclass.

Has A helps decide if something is a field. For example Dog has a height

Don't inherit to just to reuse code, use the "Is A" principle and check if it should inherit or not. If it doesn't work, probably inheritence doesn't work either.

<h3>Uses of Inheritence</h3>
<ul>
 	<li>To avoid dublicate code</li>
 	<li>Changes in the superclass are reflected everywhere in thre subclasses as well.</li>
</ul>
<h3>Other points to keep in mind</h3>
<ul>
 	<li>Everything is passed by value in java</li>
 	<li>Objects are passed by reference</li>
 	<li>Use static for passing objects</li>
</ul>
<h4>Example related to object oriented programming is found here on the github link:</h4>
Within the next tutorial, we are going to discuss what is polymorphism, give an example related to polymorphism and abstract classes
