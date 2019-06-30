#! /bin/bash
# -*- ENCODING: UTF-8 -*-
# ·

# este backup es especifico para sitios de drupal

/bin/tar -cvzf /var/backups/drupal7-$(date "+%Y-%m-%d").tar.gz /var/www/drupal7
cd /var/www/drupal7; 
drush sql-dump > /var/backups/drupal7-$(date "+%Y-%m-%d").sql
