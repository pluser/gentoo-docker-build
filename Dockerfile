FROM gentoo/portage:latest as portage
ARG BASEIMG=gentoo/stage3-amd64:latest
FROM $BASEIMG

COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
