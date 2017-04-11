#!/bin/bash

/bin/tar -cvzf /var/backups/drupal7-$(date "+%Y-%m-%d").tar.gz /var/www/drupal7
cd /var/www/drupal7; drush sql-dump > /var/backups/drupal7-$(date "+%Y-%m-%d").sql
