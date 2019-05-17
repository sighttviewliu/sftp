## Simplest docker run example
docker run -p 22:22 -d atmoz/sftp foo:pass:::upload

## Sharing a directory from your computer
docker run \
    -v /host/upload:/home/foo/upload \
    -p 2222:22 -d atmoz/sftp \
    foo:pass:1001

## Logging in
sftp -P 2222 foo@<host-ip>
