---
layout: post
title: "Install Python On Sublime Text Editor 3"
author: Navneet
categories: [Jekyll, tutorial]
image: assets\images\Content\dailyLife.png
---

<p>
Sublime text give you the power to work on almost all programming language of your choice. However, there may be some programming languages that might not be pre-installed and hence you have to explicitly add them on the fly. One of them is python. Within this tutorial we will look into
<ul>
<li>how to install package controller in sublime text editor</li>
<li>how to install and configure python in sublime text editor</li>
<li>writing our first hello world program</li>
</ul>
</p><p>
<strong>Install package controller in sublime text editor 3</strong>
</p><p>
First open console on sublime text editor 3 using <strong>VIEW > SHOW CONSOLE</strong>
</p><p>
Next paste the following code in text editor and press enter. Restart sublime text editor.
</p><p>
<code>import urllib.request,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)</code>
</p><p>
Next, to install packages click CTRL + SHIFT + P and start typing install and select <i>Package Control: install package</i>. Press enter and search for available package. You can remove, update package in this manner. 
</p><p>
Complete details about package controller can be found here https://packagecontrol.io/docs/usage
</p><p>
<strong>Install and configure python in sublime text editor 3</strong>
</p><p>
Now we have the package controller installed, we will use the package controller to install other packages, plugins and themes. To get python working on you system you need to install python first, you can download python via command line or installer.
</p><p>
To install python via command line use the following command :
</p><p>
<code>
<pre>
sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt-get update
sudo apt-get install python3.6 
</pre>
</code>
</p><p>
To download and install python via installer click on this link, which redirects you official python page and you can download python version of your choice.
</p><p>
Once we have the python installed we need store its path. For ubuntu we will use command line 
First type <strong>python</strong> and hit enter. If you are able to successfully enter python command line, it means you have successfully installed python on you system, copy the version number from there.
</p><p>
Next type <strong>whereis python 3.6</strong> to get the location of python. Copy the first location from there and that is your path of python. Store it because we will need it further.
</p><p>
Now we have the location of python, we have previously installed package controller, now lets integrate python with sublime text editor.
</p><p>
Open package controller by typing <strong>CTRL + SHIFT + P</strong> type install till it shows <i>Package Controller : Install Package</i>. Next type <strong>SublimeREPL</strong> and click enter, it will install sublimeREPL on you sublime text editor. Now restart sublime text editor to ensure all changes have taken place.
</p><p>
Next go to <strong>TOOLS -> BUILD SYSTEM -> NEW BUILD SYSTEM </strong> and enter the following json to link python with sublime text editor 3
</p><p>
<code>
<pre>
{
 "cmd": ["/usr/bin/python3", "$file"],
 "selector": "source.python",
 "file_regex": "file \"(...*?)\", line([0-9]+)"
}
</pre>
</code>
</p><p>
Now save the file as SublimeREPL-python.sublime-build and restart sublime text editor to ensure all the changes have taken place.
</p><p>
Next, go to <strong>TOOLS -> BUILD SYSTEM -> SublimeREPL-python</strong>. Once appropriate build system has been selected, create a new file and type <strong>print("hello world")</strong> and press <strong>CTRL + B</strong> to build the system.
</p><p>
If all the above steps has been installed successfully you should be able to see hello world on the output screen ensuring that python is running successfully with sublime text.
</p><p>
That's all for now! We were able to install package controller on sublime text editor, understood how to install packages/plugins on sublime text editor 3. Installed python on the system and linked python with sublime text. Moreover, just to confirm we even wrote a small hello world program in python.
</p><p>
In case of any doubts you can reach me out at <strong>navneet@makemetechie.com</strong>, you'll get a follow up within the next 24 hours regarding the same.
</p>
