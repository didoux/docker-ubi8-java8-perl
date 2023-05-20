#
# docker build . -t ubi/ubi8-openjava8-perl:8.8
#
FROM registry1.dso.mil/ironbank/redhat/ubi/ubi8:8.8
RUN dnf -y install diffutils
RUN dnf -y --allowerasing install perl

RUN cat <<EOF > /etc/yum.repos.d/adoptium.repo
[Adoptium]
name=Adoptium
baseurl=https://packages.adoptium.net/artifactory/rpm/${DISTRIBUTION_NAME:-$(. /etc/os-release; echo $ID)}/\$releasever/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.adoptium.net/artifactory/api/gpg/key/public
EOF

RUN dnf -y install temurin-8-jdk



RUN echo Verifying install ... \
    && echo perl --version && perl --version \
    && echo java -version && java -version \
    && echo javac -version && javac -version \
    && echo Complete.


