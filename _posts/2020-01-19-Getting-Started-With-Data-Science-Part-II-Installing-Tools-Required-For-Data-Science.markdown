---
layout: post
title: "Getting Started With Data Science (Part II) : Installing Tools Required For Data Science"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\ds_banner.png
---

<p>
First of all we need to install the <strong>right tools</strong> to get started with our journey of Data Science. We’ll go through the installation process and explain what the software is all about.<span data-ccp-props="{"> </span>

</p><p>

We’ll be using <strong>Anaconda</strong> software. All you have to do is to go to <a href="http://www.anaconda.com/">www.anaconda.com</a> and go to the download section over there. Or you can go to <a href="http://www.anaconda.com/download/">www.anaconda.com/download/</a> and select on which machine you’ll be downloading the particular software.<span data-ccp-props="{"> </span>

</p><p>
<strong> System Requirements</strong>
<ul>
<li>32- or 64-bit computer.</li>
<li>For Miniconda—400 MB disk space.</li>
<li>For Anaconda—Minimum 3 GB disk space to download and install.</li>
<li>Windows, macOS or Linux.</li>
<li>Python 2.7, 3.4, 3.5 or 3.6.</li>
</ul>

<strong>Installing Python And Spyder On A Windows Machine</strong>

</p><p>

Since I’m using windows machine I’ll select windows option, and then select <strong>Python 3.6 version</strong> instead of Python 2.7 since it’s an upgraded version of the same using 32 bit or <strong>64 bit</strong> depending upon your PC configuration. I'll be using 64 bit for these tutorials.<span data-ccp-props="{"> </span>

</p><p>

Once we have downloaded the tool, we need to <strong>install it on our system</strong>. Just follow the path by pressing next, select the location you want to install and rest the software does it for you.<span data-ccp-props="{"> </span>

</p><p>

Once it has successfully installed launch <strong>anaconda navigator</strong> on the start menu.<span data-ccp-props="{"> </span>

</p><p>

Now select <strong>Spyder IDE</strong>, because that’s what we’ll be using to write our code for data science.<span data-ccp-props="{"> </span>

</p>
<strong>Installing Python And Spyder On A Linux Machine</strong>
<p></p>
For this we will be taking advantage of the powerful terminal of Linux. The steps are given as follow:
<ul>
<li>Download the script for anaconda <a href="https://www.anaconda.com/download/#linux">here</a></li>
<li>To run the script open terminal. First give permission to your script using command <strong>chmod +x /path/to/yourscript.sh</strong>. Next to execute the script simple enter the path to your script i.e <strong>/path/to/yourscript.sh</strong> and press enter. </li>
<li>The script will start executing and will ask for license agreement. Once the installation is finished, it will ask you <strong>Do you wish the installer to prepend the Anaconda3 install location to PATH in your /home/navneet/.bashrc ? [yes|no]</strong>.Press yes and it will create your environment variable. Incase you typed no, you have to manually create the environment variable. It will give a path, simple enter path on terminal and press enter, you environment variable will be created.</li>
<li>Once the environment variable is created, you can now use conda and install various modules like spyder, numpy, pandas and many more.</li>
<li>To check if conda is installed properly enter command <strong>conda --version</strong>. It will return the version number of conda if installation is successful.</li>
</ul>
</p><p>
If you followed the above steps carefully, you would have successfully installed anaconda,python,spyder on you system.
</p><p>
We're done! All set for writing code on our freshly installed Spyder IDE. Within the next tutorial we'll write our first code in python on Spyder IDE, along with that we'll understand what all we can do with our IDE.

</p><p>

<strong>FAQ</strong>

</p><p>

What is Anaconda? Why do we need it?<span data-ccp-props="{"> </span>

</p><p>

Anaconda contains collection of different IDE to ease out your development and study on data science. It installs python for you and is very convenient to use. It also preinstalls various tools like numpy, pandas and many more that you’ll be using in further post. The IDE which we will be using is SPYDER IDE.<span data-ccp-props="{"> </span>

</p>
