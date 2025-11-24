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
* Install DockerCE on your Linux Host, you can reference the Dockerfile_InstallDockerCeOnHost.sh
* Build the docker image for "admindash2-app", using the script Dockerfile_Build.sh
* Launch it using the ./restart-admindash.sh
* Navigate to http://localhost:80/ and the webpage should load.
* Try searching for "Rocky" and the frontend javascript will auto populate any existing links.
* Stop it using the ./stop-admindash.sh and then edit the bookmarks_links.json file as you like.

# TODO: @@@@@@@@
* Remove the docs_links.json, as its OBE, and clean views.py appropriately.
* Feature Creep: Make a icon bar in the navbar of admindash like EDGE, I THINK THIS WOULD BE COOL FOR LOW FAST HOMEPAGE
* Feature Creep: Make a weather tracker in bottom of admindash to do JSON PULL FOR WEATHER/TYPHOON/QUAKE WIDGET

# FINISHED:
* Fix the bold highlighting at the top when going to Wiki or Remoteshell?
* Add Google Font to QuickSearch, and also make it let you type in it. 
* needs to fix the navbar hamburgericon when zoom is too high