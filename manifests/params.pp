# Class: netcat::params
#
#   The netcar configuration settings.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class netcat::params {

  $package_ensure = 'present'

  case $::osfamily {
    'RedHat': {
      if $::operatingsystemmajrelease >= 7 {
        $package_name = 'nmap-ncat'
      } else {
        $package_name = 'netcat'
      }
    }

    # I'm sure the name changes on other systems.  Haven't gotten there yet.  Contribute!
    default: {
      $package_name = 'netcat'
    }
  }

}
