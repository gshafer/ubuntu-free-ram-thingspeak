# ubuntu-free-ram-thingspeak
Shell program that displays a graph of free RAM on an Ubuntu Server

This shell program reads the free RAM memory on your Ubuntu server and sends it to the Thingsspeak website to produce a graph.

You must go to the Thinkspeak website to open a free acoount and get an API key and set up a channel.

Run the shell program on a regulary basis, I use every 5 minutes, using cron. Example cron entry (add your path to program):

*/5 * * * * sudo /PATH_TO/mbs.sh > /dev/null

You can also add this simple frame specification to a web page to display the graph:

<iframe width="1350" height="780" align="middle"style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/YOUR-CHANNEL-ID/charts/1?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=288&type=line&update=15&height=auto&width=auto&title='Free RAM'"></iframe>


Note you have to add your channel id. Width, Heigh and Title can be modified.

