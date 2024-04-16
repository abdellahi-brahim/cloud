# Docker Deployment with Portainer and NGINX Proxy Manager

This repository contains Docker Compose files and systemd service files for setting up Portainer and NGINX Proxy Manager on a Linux server.

## Usage

1. Clone this repository:

```sh
git clone <repository-url>
```

2. Run the initialization script:

```sh
cd <repository-name>
./init.sh
```

## Contents

- `portainer-compose.yml`: Docker Compose file for Portainer.
- `nginx-proxy-manager-compose.yml`: Docker Compose file for NGINX Proxy Manager.
- `portainer.service`: Systemd service file for Portainer.
- `nginx-proxy-manager.service`: Systemd service file for NGINX Proxy Manager.
- `init.sh`: Installation script to set everything up.
Setup and Deployment
Place all files in the appropriate directory structure in your repository.
Push them to your Git repository.
On your server or VM, clone the repository and run init.sh to set up everything.
This setup ensures that after cloning the repository, the user just needs to run the init.sh script to get everything up and running, making the deployment process as seamless as possible.