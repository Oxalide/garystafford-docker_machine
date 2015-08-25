## Install Docker Machine

Puppet module for downloading and installing [Docker Machine](https://docs.docker.com/machine/install/).

#### Support

This module is currently tested on:

* Ubuntu 15.04
* CentOS 7.1

It should also work on other Linux distros...

#### Usage
```puppet
include 'docker_machine'
```
```puppet
class { 'docker_machine': }
```
```puppet
class { 'docker_machine': 
  version => 'v0.4.1'
  download_file => 'docker-machine_linux-amd64'
}
```

#### Test Install
```sh
which docker-machine 
```
should return: `/usr/local/bin/docker-machine'

```sh
docker-machine --version
```
should return: `ocker-machine version 0.4.1 (e2c88d6)`