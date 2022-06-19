FROM centos:centos8.4.2105

ARG suricata_version
RUN dnf -y install dnf-plugins-core \
    epel-release \
    && dnf -y copr enable "@oisf/suricata-$suricata_version" \
    && dnf -y install suricata
