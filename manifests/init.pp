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
#    package_ensure => latest,
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
  $package_ensure = $netcat::params::package_ensure,
  $package_name   = $netcat::params::package_name,
) inherits netcat::params {

  package { 'netcat' :
    allow_virtual => false,
    ensure        => $package_ensure,
    name          => $package_name,
  }

}
