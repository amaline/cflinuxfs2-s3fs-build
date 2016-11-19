#!/bin/bash
SHA256=$(sha256sum s3fs | cut -f 1 -d ' ')
cat <<END > sources.yml
---
- url: https://github.com/s3fs-fuse/s3fs-fuse
  sha256: $SHA256
END
tar cvzf ${CIRCLE_ARTIFACTS}/${ARTIFACT_NAME} sources.yml s3fs