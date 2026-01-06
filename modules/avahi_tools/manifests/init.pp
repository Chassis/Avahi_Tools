# A Chassis extension to install packages to help debug Avahi issues
#
# @param config Hash containing configuration data from Chassis
class avahi_tools (
  Hash $config,
) {
  if ( ! empty( $::config[disabled_extensions] ) and 'chassis/ahavi_tools' in $config[disabled_extensions] ) {
    $package = absent
    $file = absent
  } else {
    $package = latest
    $file = present
  }

  package { 'avahi-utils':
    ensure => $package,
  }
}
