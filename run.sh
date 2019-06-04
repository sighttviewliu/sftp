## Simplest docker run example
docker -D run -p 22:22 -d atmoz/sftp foo:pass:::upload

## For testing
docker -D run -it --rm --name mysftp -p 22:22 atmoz/sftp foo:pass:::upload 

## Sharing a directory from your computer
docker -D run \
    -v /host/upload:/home/foo/upload \
    -p 2222:22 -d atmoz/sftp \
    foo:pass:1001

## For testing
docker -D run -it --rm --name mysftp -p 2222:22 -v $(pwd)/upload:/home/foo/upload atmoz/sftp foo:pass:1001

## Logging in
sftp -P 2222 foo@<host-ip>
