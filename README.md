# tagspaces
Docker Container build from https://github.com/tagspaces/tagspaces


docker run --restart=unless-stopped -it -d \
--name "tagspaces" \
-p 8080:8080 \
-v /opt/tagspaces:/usr/src/app \
-t phreakazoid/tagspaces:latest
