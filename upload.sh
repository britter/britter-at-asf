#!/bin/bash

lftp -u britter,just-for-lftp sftp://home.apache.org << EOF

mirror -R _site public_html

bye
EOF
