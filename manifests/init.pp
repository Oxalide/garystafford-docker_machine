# Class: docker_machine
#
# This module installs Docker Machine
#
# Parameters:
#
# [*version*]
#   The version of Docker Machine to be installed.
#   Default is v0.4.1.
#
# [*download_file*]
#   The Docker Machine file to be downloaded.
#   Default is docker-machine_linux-amd64.
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#   include 'docker_machine'
#   class { 'docker_machine': }
#   class { 'docker_machine':
#     download_file => 'docker-machine-Linux-x86_64'
#   }
#
class docker_machine (
  $version       = $docker_machine::params::version,
  $download_file = $docker_machine::params::download_file) inherits 
docker_machine::params {
  exec { 'download-docker-machine':
    command => "curl -L https://gitlab-docker-machine-downloads.s3.amazonaws.com/main/${download_file} > /tmp/docker-machine",
    user    => root,
    creates => '/tmp/bin/docker-machine'
  } ->
  exec { 'move-docker-machine':
    command => 'mv /tmp/docker-machine /usr/local/bin',
    user    => root,
    creates => '/usr/local/bin/docker-machine'
  } ->
  file { '/usr/local/bin/docker-machine':
    path  => '/usr/local/bin/docker-machine',
    owner => 'root',
    group => 'root',
    mode  => '0775',
  }
}
