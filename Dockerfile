FROM  gcr.io/go-containerregistry/crane:debug

# allow to be used through a shell (link busybox shell in a classic place)
RUN ["/busybox/sh", "-c", "ln -s /busybox/sh /bin/sh"]

# link crane in a usual place to be find through $PATH
RUN ["/busybox/sh", "-c", "ln -s /ko-app/crane /bin/crane"]

# allow to store docker registry credentials
VOLUME ["/root"]

ENTRYPOINT []
