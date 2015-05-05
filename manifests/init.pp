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
lass netcat {
  
    # determine the netcat package based on the operatingsystem fact
    $netcat = $operatingsystem ? {
        CentOS  => "nc",
        default => "netcat",
    }
  
    package { "$netcat":
        ensure => "present",
        alias  => "netcat",
    }
}
