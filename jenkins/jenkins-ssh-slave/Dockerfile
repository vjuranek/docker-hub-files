FROM fedora:22
MAINTAINER Vojtech Juranek <vjuranek@redhat.com>

# Execute system update
RUN dnf -y update && dnf clean all

# Install JDK and ssh server
RUN dnf -y install java-1.8.0-openjdk-devel openssh-server && dnf clean all

# Generate ssh key
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''

# Create Jenkins user and Jenkins group
RUN groupadd -r jenkins -g 1001 && useradd -u 1001 -r -g jenkins -m -d /opt/jenkins -s /bin/bash -c "Jenkins user" jenkins
RUN echo "jenkins:jenkins" | chpasswd

# Expose standard SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
