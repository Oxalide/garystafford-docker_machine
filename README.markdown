## Install Docker Machine

Puppet module for downloading and installing [Docker Machine](https://docs.docker.com/machine/install-machine/).

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
  download_file => 'docker-machine-Linux-x86_64'
}
```

#### Test Install
```sh
which docker-machine 
```
Should return: `/usr/local/bin/docker-machine`

```sh
