FROM gentoo/portage:latest as portage
ARG base_image
FROM ${base_image-gentoo/stage3-amd64:latest}

COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
