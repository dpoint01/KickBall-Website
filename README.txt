KickBall-Website
================

This program explores at how we can make our web pages dynamic by creating 
HTML on the fly using Ruby and ERB templates.

All the files with my original commit message  "KickBall League" are the files I first commmited. I then updated my server.rb
by adding another get method which uses dynamic routing instead of hardcoding the team names and having four files for four teams.
Instead I created a new "show.erb' (in views) which takes care of all the processes in one file instead of having four repetetive files.

I have been commissioned by the premier League of Cool Kickball Professionals (LACKP) to build their first website.
The league currently has 4 teams. The league has supplied a CSV of the players.

This program then reads in the CSV file and passes on relevant information according to HTTP requests to the
various .erb files.

NOTE: the instructions to run the program and see output on web browser are in the header comments of "server.rb" 
which is the main file.
