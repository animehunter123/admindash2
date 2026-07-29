# Description:
A quick dashboard for centered buttons in a json file you can customize, with a searchbox to auto search'em on the top right corner.

Confirmed this app works on:
```groovy
Python 3.13.7 
blinker      1.9.0
click        8.3.0
Flask        3.1.2
itsdangerous 2.2.0
Jinja2       3.1.6
MarkupSafe   3.0.3
Werkzeug     3.1.3
```

# Quick Setup:
* ./1-setup-docker-on-host.sh - Install DockerCE on your Linux Host
* ./2-dockerfile_build.sh - Build the docker image for "admindash2-app"
* ./restart-admindash.sh - Start the app!
* Now, Navigate to http://localhost:80/

It should be up! Try searching for "Rocky" and the frontend javascript will auto populate any existing links. Stop it using the ./stop-admindash.sh and then edit the bookmarks_links.json file as you like.

# TODO: @@@@@@@@
* When typing the searchbar, i dont wanna have to press down+enter after typing, just enter. <-------- FIXED NEED TO VERIF ON OTHER SIDE!!!!!!!!!!!
* Remove the docs_links.json, as its OBE, and clean views.py appropriately.
* Add navbar customization instead (with iframes if you want bonus points).
* Add Waitress w/8 threads, or Actix for sub 1ms response.
* Feature Creep: Make a icon horizontal navbar in the navbar of admindash like EDGE BOOKMARKS with icons only.
* Feature Creep: Make a weather tracker in bottom of admindash to do JSON PULL FOR WEATHER/TYPHOON/QUAKE WIDGET. (fetch w/e.c.).

# FINISHED:
* Fix the bold highlighting at the top when going to Wiki or Remoteshell?
* Add Google Font to QuickSearch, and also make it let you type in it. 
* needs to fix the navbar hamburgericon when zoom is too high
