# You can find the new timestamped tags here: https://hub.docker.com/r/gitpod/workspace-full/tags
FROM gitpod/workspace-full:2022-05-08-14-31-53

# Install custom tools, runtime, etc.
RUN brew install kubernetes-cli \
    brew install kubectx \
    brew install helm \
    brew install python-setuptools \
    brew install six \
    brew install minikube \
    sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx \
    sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

