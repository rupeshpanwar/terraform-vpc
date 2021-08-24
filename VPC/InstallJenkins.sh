# #! /bin/bash
# #install docker
# curl -fsSL https://get.docker.com -o get-docker.sh
# sh get-docker.sh

# # Install Git SCM
# yum install git -y

# #install jenkis
# mkdir -p /var/jenkins_home
# chown -R 1000:1000 /var/jenkins_home/
# docker run -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts-jdk11


# # Start Jenkins
# service jenkins start
# systemctl start jenkins

# # Enable Jenkins with systemctl
# chkconfig jenkins on
# systemctl start jenkins.service
# systemctl enable jenkins.service
# # show endpoint
# echo 'Jenkins installed'
# echo 'You should now be able to access jenkins at: http://'$(curl -s ifconfig.co)':8080'

# cat /var/lib/jenkins/secrets/initialAdminPassword
# cat /var/jenkins_home/secrets/initialAdminPassword

