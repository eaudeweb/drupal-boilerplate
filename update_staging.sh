#!/bin/bash
# You can implement this is a cronjob.

# Go to docroot/
cd /var/local/mysite/docroot

# Pulling the last Updates
git pull

# Sync from edw staging
drush downsync @mysite.production @mysite.staging -y

drush cc all
