FROM gentoo/portage:latest as portage
FROM gentoo/stage3-amd64:latest

COPY --from=portage /usr/portage /usr/portage
