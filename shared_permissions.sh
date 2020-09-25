#!/bin/bash -v
#
# prepare a folder for bind mount
#
NBDIR=/ScratchSSD/docker/docker_tools/docker_files_jb
# make it owned by the GID of the notebook containers.
# This is 100 in the jupyter docker-stacks,
# but should be whatever GID your containers run as
chown :2005 "$NBDIR"
# make it group-setgid-writable
chmod g+rws "$NBDIR"
# set the default permissions for new files to group-writable
setfacl -d -m g::rwx "$NBDIR"
