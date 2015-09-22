#!/bin/bash
# Build and serve a repo
mkdir -p /var/www
if [[ -z "$@" ]]; then
  createrepo /repo/
  chmod -R a+rw /repo/repodata/
else
  for d; do
    cd /repo
    cd "$d"
    createrepo .
    chmod -R a+rw ./repodata/
  done
fi

python2 -m SimpleHTTPServer
