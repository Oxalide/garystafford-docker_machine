# Class: docker_machine::params
#
# This module manages docker_machine
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class docker_machine::params (
  $version       = 'v0.4.1',
  $download_file = 'docker-machine_linux-amd64') {
  Exec {
    path => ['/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/'] }
}
