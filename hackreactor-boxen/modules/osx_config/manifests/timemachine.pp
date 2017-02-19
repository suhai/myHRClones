class osx_config::timemachine {

  boxen::osx_defaults {
    'Prevent Time Machine from prompting to use new hard drives as backup volume':
      ensure => present,
      key    => 'DoNotOfferNewDisksForBackup',
      domain => 'com.apple.TimeMachine',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Allow Time Machine to use network drives as backup volumes':
      ensure => present,
      key    => 'TMShowUnsupportedNetworkVolumes',
      domain => 'com.apple.systempreferences',
      value  => '1',
      type   => 'int',
      user   => $::boxen_user;
  }

}
