class osx_config::finder {

  boxen::osx_defaults {
    'Show icons for external hard drives on the desktop':
      ensure => present,
      key    => 'ShowExternalHardDrivesOnDesktop',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show icons for hard drives on the desktop':
      ensure => present,
      key    => 'ShowHardDrivesOnDesktop',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show icons for removable media on the desktop':
      ensure => present,
      key    => 'com.apple.finder',
      domain => 'ShowRemovableMediaOnDesktop',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show icons for servers on the desktop':
      ensure => present,
      key    => 'ShowMountedServersOnDesktop',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show all filename extensions':
      ensure => present,
      key    => 'AppleShowAllExtensions',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show status bar':
      ensure => present,
      key    => 'ShowStatusBar',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Allow text selection in Quick Look':
      ensure => present,
      key    => 'QLEnableTextSelection',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Display full POSIX path as Finder window title':
      ensure => present,
      key    => '_FXShowPosixPathInTitle',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'When performing a search, search the current folder by default':
      ensure => present,
      key    => 'FXDefaultSearchScope',
      domain => 'com.apple.finder',
      value  => 'SCcf',
      type   => 'string',
      user   => $::boxen_user;

    'Disable the warning when changing a file extension':
      ensure => present,
      key    => 'FXEnableExtensionChangeWarning',
      domain => 'com.apple.finder',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Avoid creating .DS_Store files on network volumes':
      ensure => present,
      key    => 'DSDontWriteNetworkStores',
      domain => 'com.apple.desktopservices',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Open a new Finder window when a read-only volume is mounted':
      ensure => present,
      key    => 'auto-open-ro-root',
      domain => 'com.apple.frameworks.diskimages',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Open a new Finder window when a writable volume is mounted':
      ensure => present,
      key    => 'auto-open-rw-root',
      domain => 'com.apple.frameworks.diskimages',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Open new Finder window when a removable disk is mounted':
      ensure => present,
      key    => 'OpenWindowForNewRemovableDisk',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Use list view in all Finder windows by default':
      ensure => present,
      key    => 'FXPreferredViewStyle',
      domain => 'com.apple.finder',
      value  => 'Nlsv',
      type   => 'string',
      user   => $::boxen_user;

    'Disable the warning before emptying the Trash':
      ensure => present,
      key    => 'com.apple.finder',
      domain => 'WarnOnEmptyTrash',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable AirDrop over Ethernet and on unsupported Macs running Lion':
      ensure => present,
      key    => 'BrowseAllInterfaces',
      domain => 'com.apple.NetworkBrowser',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }

}
