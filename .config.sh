#!/bin/sh
# Contains credentials
# This is a template file, save as simply .config.sh (amd make executable) and set your own values below.

# System language
utf8Language=en_GB

# Define the website hostname and e-mail for the VirtualHost
# Several option groups here, comment in / out as necessary
# Localhost
websiteurl=nominatim.localhost
emailcontact=nominatim@localhost
# CycleStreets
#websiteurl=nominatim.cyclestreets.net
#emailcontact=webmasterATcyclestreets.net

# Define the username for Nominatim to install/run under, so that it can run independent of any individual personal account on the machine
username=nominatim
password=

# Apache virtual host configuration file name - with .conf extension
nominatimVHfile=400-nominatim.conf

# Wikipedia rankings
# Default is yes. To turn off this feature leave as blank.
includeWikipedia=yes

# Set up the website for use with Apache
wwwNominatim=/websites/www/nominatim

### SETTINGS ###
# Define either a full planet, or an extract by commenting in the relevant sections

## Full Planet
# On a machine with 1.2TB disk, 32 GB RAM, Quad processors - it took 10 days to run and used about 700GB. (December 2013)
#planetUrl=http://ftp5.gwdg.de/pub/misc/openstreetmap/planet.openstreetmap.org/pbf/
#postgresconfigmode=dw
#override_maintenance_work_mem=10GB
# 24GB is recommended for full planet import (arg value is in MB)
#osm2pgsqlcache="--osm2pgsql-cache 24000"


## Geofabrik Extract
# If planetUrl is an empty string that tells the install script to configure for Geofabrik extract
planetUrl=
geofabrikUrl=http://download.geofabrik.de/
postgresconfigmode=oltp
override_maintenance_work_mem=

# Default cache size
# Seemed to be necessary to use cache as small as 512MB on a VM that had 2GB RAM.
osm2pgsqlcache="--osm2pgsql-cache 512"

# Define the location of the .pbf OSM data file; -latest.osm.pbf will be appended automatically
# Several option groups here, comment in / out as necessary
# Andorra (install, without wikipedia data, takes 12 minutes)
# Test street: Andorra la Vella
osmdatafolder=europe/
osmdatacountry=andorra

## British Isles
#osmdatafolder=europe/
#osmdatacountry=british-isles
## Iceland
#osmdatafolder=europe/
#osmdatacountry=iceland

## Europe
# On a machine with 64GB ram and four processors takes 2.5 days to complete the initial install Oct 2012.
#osmdatafolder=
#osmdatacountry=europe

