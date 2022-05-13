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
  $download_file_default = 'docker-machine-Linux-x86_64') {
  case $::osfamily {
    'Archlinux', 'Debian', 'Redhat' : {
      case $::architecture {
        'x86_64', 'amd64' : { $download_file = $download_file_default }
        'i386', 'x86'     : { $download_file = 'docker-machine-Linux-x86_64' }
      }
    }
    default : {
      fail("The ${::osfamily} operating system is not supported with the docker_machine module"
      )
    }
  }

  Exec {
    path => ['/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/'] }
}
