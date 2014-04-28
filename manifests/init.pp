# == Class: netcat
#
# Installs (or removes) Netcat
#
# === Parameters
#
# [*ensure*]
#   Any of the typical $ensure values for a Package: present, absent,
#   latest, etc.
#
# === Examples
#
#  class { 'netcat':
#    ensure => latest,
#  }
#
# === Authors
#
# Rick Fletcher <fletch@pobox.com>
#
# === Copyright
#
# Copyright 2014 Rick Fletcher
#
class netcat (
  $ensure = 'present',
) {
  package { 'netcat':
    ensure => $ensure,
  }
}
