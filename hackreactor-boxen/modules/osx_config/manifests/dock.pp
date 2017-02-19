class osx_config::dock {

  boxen::osx_defaults {
    'Enable dock autohide':
      ensure => present,
      key    => 'autohide',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Set the icon size of Dock items to 50 pixels':
      ensure => present,
      key    => 'tilesize',
      domain => 'com.apple.dock',
      value  => '50',
      type   => 'int',
      user   => $::boxen_user;

    'Use new-style stack view on dock folders':
      ensure => present,
      key    => 'use-new-list-stack',
      domain => 'com.apple.dock',
      value  => 'YES',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable spring loading for all Dock items':
      ensure => present,
      key    => 'enable-spring-load-actions-on-all-items',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show indicator lights for open applications in the Dock':
      ensure => present,
      key    => 'show-process-indicators',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Make Dock icons of hidden applications translucent':
      ensure => present,
      key    => 'showhidden',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }

}
