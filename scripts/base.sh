sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
# yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl

# # Sysdig
# rpm --import https://s3.amazonaws.com/download.draios.com/DRAIOS-GPG-KEY.public
# curl -s -o /etc/yum.repos.d/draios.repo http://download.draios.com/stable/rpm/draios.repo
# yum -y install kernel-devel-$(uname -r)
# yum -y install sysdig

# # Install jq to parse json
# yum install -y jq vim

# # Turn off firewall
# systemctl status firewalld
# service firewalld stop



# # Get Docker
# subscription-manager repos --enable=rhel-7-server-extras-rpms

# yum install -y docker


# # Add current user to docker group
# gpasswd -a ${USER} docker
# gpasswd -a vagrant docker


# Get Docker-compose
# sudo -i curl -L https://github.com/docker/compose/releases/download/1.6.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
# sudo -i chmod +x /usr/local/bin/docker-compose

# Get Docker-machine
# sudo curl -L https://github.com/docker/machine/releases/download/v0.6.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine && \
# sudo chmod +x /usr/local/bin/docker-machine

# Install Nodejs & NPM
# sudo yum install epel-release
# sudo yum install nodejs
# sudo yum install npm
# sudo npm -g install npm
