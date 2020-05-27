ARG base_image
FROM gentoo/portage:latest as portage
FROM ${base_image}

COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
