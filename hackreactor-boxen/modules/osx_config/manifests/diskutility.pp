class osx_config::diskutility {

  boxen::osx_defaults {
    'Enable the debug menu in Disk Utility':
      ensure => present,
      key    => 'DUDebugMenuEnabled',
      domain => 'com.apple.DiskUtility',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable advanced options in Disk Utility':
      ensure => present,
      key    => 'advanced-image-options',
      domain => 'com.apple.DiskUtility',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }

}
