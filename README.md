# docker-ubi8-java8-perl

The purpose of this project is to create a docker image that has both perl & java.

Note: If you can use multiple phase build and seperate out building from running containers.

Using Ironbank
https://registry1.dso.mil/harbor/projects 

Red Hat Univeral Base Images (UBI) 
https://ironbank.dso.mil/repomap/details;registry1Path=redhat%252Fubi%252Fubi8 

# You must be registered and logged in to Registry One in order for the docker pull command to work.
docker pull registry1.dso.mil/ironbank/redhat/ubi/ubi8:8.8


docker login registry1.dso.mil
UserName: (First_and_last_name)
Password: (CLI secret)



Building, running, and managing containers
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html-single/building_running_and_managing_containers/index#con_understanding-the-ubi-minimal-images_assembly_types-of-container-images 



https://adoptium.net/installation/linux/

cat <<EOF > /etc/yum.repos.d/adoptium.repo
[Adoptium]
name=Adoptium
baseurl=https://packages.adoptium.net/artifactory/rpm/${DISTRIBUTION_NAME:-$(. /etc/os-release; echo $ID)}/\$releasever/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.adoptium.net/artifactory/api/gpg/key/public
EOF

dnf install temurin-8-jdk

# Use Java 17 
# dnf install temurin-17-jdk


Modular Perl in Red Hat Enterprise Linux 8

https://developers.redhat.com/articles/2022/03/10/modular-perl-red-hat-enterprise-linux-8# 

yum --allowerasing install perl