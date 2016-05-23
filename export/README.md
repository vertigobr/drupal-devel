Export folder
========

This is a dummy folder to be used as temporary mountpoint when dumping files from containers.

Example:

```
docker run --rm \
    -v $(pwd)/export:/tmp/export \
    vertigo/drupal-devel \
        cp -R '/var/www/html/themes/*' /tmp/export/
```

