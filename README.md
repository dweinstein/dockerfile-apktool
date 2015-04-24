# SYNOPSIS

docker container file for apktool

Releases will be tagged with apktool versions.

# USAGE

```
docker pull dweinstein/apktool
docker run -t -i --rm -v /path/to/apks/:/apks dweinstein/apktool

# java -jar ./apktool.jar /apks/foo.apk
```
