class osx_config::mouse {

  boxen::osx_defaults {
    'Trackpad: Disable tap to click':
      ensure => present,
      key    => 'Clicking',
      domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable tap to click globally':
      ensure => present,
      key    => 'com.apple.mouse.tapBehavior',
      domain => 'NSGlobalDomain',
      value  => '0',
      type   => 'int',
      user   => $::boxen_user;

    'Trackpad: swipe between pages with three fingers':
      ensure => present,
      key    => 'AppleEnableSwipeNavigateWithScrolls',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable three-finger horizontal swipe':
      ensure => present,
      key    => 'TrackpadThreeFingerHorizSwipeGesture',
      domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
      value  => '1',
      type   => 'int',
      user   => $::boxen_user;

    'Use scroll gesture to zoom':
      ensure => present,
      key    => 'HIDScrollZoomModifierMask',
      domain => 'com.apple.universalaccess',
      value  => '262144',
      type   => 'int',
      user   => $::boxen_user;

    'Use the Ctrl (^) modifier key as a trigger for zooming':
      ensure => present,
      key    => 'closeViewScrollWheelToggle',
      domain => 'com.apple.universalaccess',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }

}
