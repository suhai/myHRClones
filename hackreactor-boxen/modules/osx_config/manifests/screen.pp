class osx_config::screen {

  boxen::osx_defaults {
    'Save screenshots to the desktop':
      ensure => present,
      key    => 'location',
      domain => 'com.apple.screencapture',
      value  => '$HOME/Desktop',
      type   => 'string',
      user   => $::boxen_user;

    'Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)':
      ensure => present,
      key    => 'type',
      domain => 'com.apple.screencapture',
      value  => 'png',
      type   => 'string',
      user   => $::boxen_user;

    'Disable shadow in screenshots':
      ensure => present,
      key    => 'disable-shadow',
      domain => 'com.apple.screencapture',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable subpixel font rendering on non-Apple LCDs':
      ensure => present,
      key    => 'NSGlobalDomain',
      domain => 'AppleFontSmoothing',
      value  => '2',
      type   => 'int',
      user   => $::boxen_user;
  }

}
