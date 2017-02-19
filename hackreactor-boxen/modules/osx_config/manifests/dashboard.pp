class osx_config::dashboard {

  boxen::osx_defaults {
    'Disable the dashboard':
      ensure => present,
      key    => 'mcx-disabled',
      domain => 'com.apple.dashboard',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Don’t show Dashboard as a Space':
      ensure => present,
      key    => 'dashboard-in-overlay',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }

}
