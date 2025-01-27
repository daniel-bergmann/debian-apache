# A minimal Debian Linux environment with Apache

A quick and easy way to spin up a Linux environment with a web server ready to go. Perfect for quick and dirty experiments and proof of concept projects.

### Build the image

`docker-compose up --build -d`

### Enter docker bash

`docker exec -it debian_apache bash`

## Set up your preferred dev environment

### Python

1. `apt-get install -y python3 python3-pip`

2. `python3 --version`

3. `pip3 --version`

4. `ln -s /usr/bin/python3 /usr/bin/python`

### Install go

1. `curl -LO https://go.dev/dl/go1.23.5.linux-amd64.tar.gz`

2. `tar -C /usr/local -xzf go1.23.5.linux-amd64.tar.gz`

3. `echo "export PATH=$PATH:/usr/local/go/bin" >> /root/.bashrc`

4. `. /root/.bashrc`

5. `go version`

### Install PHP, Composer and Laravel

1. `/bin/bash -c "$(curl -fsSL https://php.new/install/linux/8.4)"`

2. `. /root/.bashrc `

3. `php -v`

### Install NVM

1. `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash`

2. `. /root/.bashrc `

3. `nvm install node`

4. `node -v`
