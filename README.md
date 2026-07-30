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
* ./1-setup-docker-on-host.sh - Optional Install DockerCE on your Linux Host.
* ./2-dockerfile_build.sh - Build the docker image for "admindash2-app".
* ./restart-admindash.sh - Start the app!
* Browser to: http://localhost:80/

It should be up! Try searching for "Rocky" and the frontend javascript will auto populate any existing links. Stop it using the ./stop-admindash.sh and then edit the bookmarks_links.json file as you like.

# TODO: @@@@@@@@
* Bug CSS: Grid doesnt center the last row anymore unlike old admindash ver.
* Bug CSS: Reactivity no longer works when adding cp/wik/wek/rshell and resizing horizontally.
* Add a version in the brand hover I guess of the git commit date?
* Add Keyboard Ctrl+/ to focus on searchbar
* Add navbar customization instead (with iframes if you want bonus points).
* Add Waitress w/8 threads, or _port to rust_ Axum/Actix for sub 1ms response.
* Feature Creep: Make a icon horizontal navbar in the navbar of admindash like EDGE BOOKMARKS with icons only.
* Feature Creep: Make a weather tracker in bottom of admindash to do JSON PULL FOR WEATHER/TYPHOON/QUAKE WIDGET. (fetch w/e.c.).

# COMPLETED (PLZ VERIFY)
* Ensure that typing > press ENTER works + DOWN+ENTER is second in dropdown list.
* Ensure that DIVIDER1/DIVIDER2 etc... are not showing up in the search results and are filtered out (Array.from(map.keys()).filter(!item.startsWith('Divider' blah blah))