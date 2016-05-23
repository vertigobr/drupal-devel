#!/bin/bash
docker run --name drupal -d \
    -p 8000:80 \
    vertigo/drupal-devel
