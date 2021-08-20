#! /bin/bash
#install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Install Git SCM
yum install git -y

#install jenkis
mkdir -p /var/jenkins_home
chown -R 1000:1000 /var/jenkins_home/
docker run -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts-jdk11
# show endpoint
echo 'Jenkins installed'
echo 'You should now be able to access jenkins at: http://'$(curl -s ifconfig.co)':8080'


# ALternative way but without docker
# # Install Java
# yum install java-1.8.0-openjdk.x86_64 -y

# # Download and Install Jenkins
# yum update –y
# wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
# rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
# yum install jenkins -y

# # Start Jenkins
# systemctl start jenkins

# # Enable Jenkins with systemctl
# systemctl enable jenkins

# # Install Git SCM
# yum install git -y

# # Make sure Jenkins comes up/on when reboot
# chkconfig jenkins on