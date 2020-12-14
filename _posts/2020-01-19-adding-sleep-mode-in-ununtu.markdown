---
layout: post
title: "Adding Sleep Mode In Ubuntu"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\dailyLife.png
---

<p>Time to read: {{ content | reading_time }}</p>
<p>
Ubuntu by default gives option to either restart or power off ubuntu, but what if we want to sleep our laptop. Sleep gives us the advantage to save electricity and upon resume allows user to resume work instead of rebooting your laptop.You can know more about sleep <a href="https://en.wikipedia.org/wiki/Sleep_mode">here</a> 
</p><p>
Within this blog post we will 
</p><p>
add sleep functionality to our system using gconf-editor and using terminal
</p><p>
<strong>Adding sleep functionality to our system using terminal</strong>
</p><p>
<code>
sudo pm-suspend
</code>
</p><p>
However, to make the above command run, you need to add utils to your system. To do that simply run the command
</p><p>
<code>
sudo apt-install pm-utils
</code>
</p><p>
<strong>Adding sleep functionality using gconf-editor</strong>
</p><p>
Run the following command in your terminal
</p><p>
<code>sudo apt-get install gconf-editor</code>
</p><p>
create a new varible and name it sleep
</p><p>
This will create a sleep option and you can put your computer/laptop in sleep using this command
</p><p>
That's all folks! In this short tutorial you were able to put your system in sleep mode, it has it's own advantage and helps save electricity as well.
</p>
