class osx_config::animations {

  boxen::osx_defaults {
    'Disable opening and closing window animations':
      ensure => present,
      key    => 'NSAutomaticWindowAnimationsEnabled',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Increase window resize speed for Cocoa applications':
      ensure => present,
      key    => 'NSWindowResizeTime',
      domain => 'NSGlobalDomain',
      value  => '0.001',
      type   => 'float',
      user   => $::boxen_user;

    'Disable window animations and Get Info animations':
      ensure => present,
      key    => 'DisableAllAnimations',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Reduce the animation time for Mission Control/Expose':
      ensure => present,
      key    => 'expose-animation-duration',
      domain => 'com.apple.dock',
      value  => '0.1',
      type   => 'float',
      user   => $::boxen_user;

    'Eliminate Dock autohide delay':
      ensure => present,
      key    => 'autohide-delay',
      domain => 'com.apple.dock',
      value  => '0',
      type   => 'float',
      user   => $::boxen_user;
  }

}
