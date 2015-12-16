#!/bin/bash

function upload_site() {
  lftp -u britter,just-for-lftp sftp://home.apache.org << EOF

  mirror -R _site public_html

  bye
EOF
}

if jekyll build; then
  upload_site
fi
