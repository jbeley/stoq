#!/bin/bash
TEMPDIR=$(mktemp -d)
docker run \
    -v /home/jbeley/Sources/APTnotes/:/usr/local/stoq/pdf  \
    -v /home/jbeley/riskiq/:/usr/local/stoq/malware  \
    -v /home/jbeley/Projects/yara:/usr/local/stoq/yara \
    -v $TEMPDIR:/usr/local/stoq/malicious/ \
    --rm -it stoqtest /bin/bash


