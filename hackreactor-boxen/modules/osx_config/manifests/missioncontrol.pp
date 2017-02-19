class osx_config::missioncontrol {

  boxen::osx_defaults {
    'Disable auto-rearrange on Spaces':
      ensure => present,
      key    => 'mru-spaces',
      domain => 'com.apple.dock',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Don’t group windows by application in Mission Control':
      ensure => present,
      key    => 'expose-group-by-app',
      domain => 'com.apple.dock',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;
  }

}
