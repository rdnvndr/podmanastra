sudo mkdir /mnt/astra
podman run --interactive --tty --name astra --hostname=astra \
--volume /tmp/.X11-unix:/tmp/.X11-unix --env DISPLAY --privileged  \
--device /dev/snd --device /dev/input \
--volume /dev/dri:/dev/dri \
--volume /etc/localtime:/etc/localtime:ro \
--volume /mnt/astra:/mnt/astra \
astralinux bash