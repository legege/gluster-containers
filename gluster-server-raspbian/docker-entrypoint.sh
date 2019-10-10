#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

$DIR/fake-disk.sh
$DIR/gluster-setup.sh

exec /usr/sbin/glusterd -N --log-file - --log-level DEBUG