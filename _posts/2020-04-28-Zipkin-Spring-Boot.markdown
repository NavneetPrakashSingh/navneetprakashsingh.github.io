---
layout: post
title: "Zipkin with Spring Boot"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\Zipkin.png
---

In this tutorial we will be covering the following topics:

<ul>
<li>What is Zipkin and why do we need Zipkin?</li>
<li>How to integrate Zipking with spring boot application?</li>
<li>Running microservices in spring boot and sending logs request to Zipkin</li>
<li>Analyzing the results in Zipkin UI</li>
</ul>
So, lets get started with our first topic.
<h3>What is Zipkin and why do we need Zipkin?</h3>
<p>Have you wondered how would you connect the various logs within your microservices? Such that whenever a user/client hits one of your microservice and it calls a set of other microservices and just like a good developer you log all the requests to the logs. But you still don’t know what was the latency related to the microservice, what microservice was not hit and what was the error that occurred. To simplify, let us consider the following UML diagram of a simple microservice. </p>
<img src="\assets\images\Content\Zipkin-UML.png" alt="UML Diagram Microservice">
<p>Within the above UML diagram, you can see that there is a CustomerService, DataService1 and DataService2. This is a very common example of microservice architecture and we see that all these services are connected to a zipkin server.</p>
<p>This is where zipkin comes in, Zipkin is a tracing system that is used in a distributed architecture or system. It also logs the time for each service, helping us to analyze which service is taking more time, thereby giving more time to analyze where you can improve the efficiency of the system.</p>
<p>How Zipkin does is, it has a trace ID and span ID. Whenever a client comes to your system, a trace ID is issued, which remains unique to the entire request and span ID remains unique to the microservice that is being used. So, now if you want to trace your request against a specific user, you can follow the trace ID which Zipkin presents in a visualized manner as well. </p>
<p>Now we have a brief understanding of zipkin, we can create a zipkin server to which these microservices would then send request. To set up the Zipkin server, run the following commands on the </p>
<script src="https://gist.github.com/NavneetPrakashSingh/b8b36ef83f9096e2ccada888727e9971.js"></script>
Once we have the instance of Zipkin running on http://localhost:9411/zipkin/ the next step is to integrate it with Spring boot application. If we see our command prompt we get
<img src="\assets\images\Content\zipkin-running.png" alt="Zipkin Running Successfully">
<p>The above screenshot shows that the zipkin server is up and running</p>
<h3>Integrating Zipkin with spring boot application</h3>
<p>To integrate Zipkin with Spring boot, we need to add Zipkin and Spring Sleuth dependency to our project. Once the dependencies are added to the project, we need to configure our application property to set our sampler size as 1 for Zipkin. Sampler is a way to keep track of how many traces (samplers) to keep against each request. You can find more about Spring Cloud Sleuth <a href=”https://spring.io/projects/spring-cloud-sleuth”>here</a></p>
The property file and the pom.xml file is shown below:
<script src="https://gist.github.com/NavneetPrakashSingh/3e5844a4237029e50d7ecf060ba43d93.js"></script>
<p>Now once, we have the dependency set up in our project, we need to create the microservice that we discussed in the UML diagram above. We will be using three microservices: dataService1, dataService2 and customerService. DataService1 has the API that gives the result related to the contacts. DataService2 has the API that gives the result related to the Vehicle. In dataservice2, we have added a latency which we will see in the Zipkin output and use it to analyze our service. We also have customerservice that calls both these services and returns back the result.</p>
The code for the all the API is shown in the following gist:
<script src="https://gist.github.com/NavneetPrakashSingh/e35d1d2fbb4661813ee3ed640be6c300.js"></script>
<script src="https://gist.github.com/NavneetPrakashSingh/0c0b5af193f3e4fbc04d5792106c082b.js"></script>
<script src="https://gist.github.com/NavneetPrakashSingh/7b65a767cc588b8c405c300b99cef49f.js"></script>
Now, when we call the API using postman, we get the following output:
<img src="\assets\images\Content\GetRequestService1.png" alt="GET Request Service 1" class="pb-2">
The above screenshot shows the result of GET request when we hit dataService1
<img src="\assets\images\Content\service2.png" alt="GET Request Service 2" class="pb-2">
The above screenshot shows the result of GET request when we hit dataService2
<img src="\assets\images\Content\service3.png" alt="GET Request CustomerService" class="pb-2">
The above screenshot shows the result of GET request when we hit customerService
<p>This means that we have done our setup for the APIs correctly, next we want to see if these results are registed to Zipkin or not. </p>
<img src="\assets\images\Content\zipkin-output.png" alt="Zipkin Output" class="pb-2">
<img src="\assets\images\Content\zipkin-analysis.png" alt="Zipkin Analysis" class="pb-2">
<img src="\assets\images\Content\zipkin-visualize.png" alt="Zipkin Visualize" class="pb-2">
<h3>Analyzing results from Zipkin</h3>
<p>From this we can see we have a centralized logging system such that each request has one trace ID which is unique for each request. We also have a span ID that is unique for each service.</p>
<p>From the above screenshot related to Zipkin, we see that the customer service takes 3.116 sec to execute, out of this the contact details take 3.016 sec to execute and that is where we had added our latency. The vehicle service takes only 7.29 ms since it didn’t have any latency code.</p>
<h3>Github Code </h3>
<p>You can get the complete code from github in my Spring Boot Series: <a href="https://github.com/NavneetPrakashSingh/Spring-Boot-Series/tree/master/springcloud-m5-dataservice1">DataService1</a>, <a href="https://github.com/NavneetPrakashSingh/Spring-Boot-Series/tree/master/springcloud-m5-dataservice2">DataService2</a>,<a href="https://github.com/NavneetPrakashSingh/Spring-Boot-Series/tree/master/springcloud-m5-customerservice">CustomerService</a></p>
