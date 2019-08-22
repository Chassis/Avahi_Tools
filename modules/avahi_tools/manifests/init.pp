# A Chassis extension to install packages to help debug Avahi issues
class avahi_tools (
  $config,
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

  package { 'avahi-dbg':
    ensure => $package,
  }
}
