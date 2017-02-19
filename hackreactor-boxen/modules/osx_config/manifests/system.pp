class osx_config::system {

  boxen::osx_defaults {
    'Disable menu bar transparency':
      ensure => present,
      key    => 'AppleEnableMenuBarTransparency',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Always show scroll bars':
      ensure => present,
      key    => 'AppleShowScrollBars',
      domain => 'NSGlobalDomain',
      value  => 'always',
      type   => 'string',
      user   => $::boxen_user;

    'Expand save panel by default':
      ensure => present,
      key    => 'NSNavPanelExpandedStateForSaveMode',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Expand print panel by default':
      ensure => present,
      key    => 'PMPrintingExpandedStateForPrint',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Save to disk (not to iCloud) by default':
      ensure => present,
      key    => 'NSDocumentSaveNewDocumentsToCloud',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable the “Are you sure you want to open this application?” dialog':
      ensure => present,
      key    => 'LSQuarantine',
      domain => 'com.apple.LaunchServices',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Display ASCII control characters using caret notation in standard text views':
      ensure => present,
      key    => 'NSTextShowsControlCharacters',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable Resume system-wide':
      ensure => present,
      key    => 'NSQuitAlwaysKeepsWindows',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable automatic termination of inactive apps':
      ensure => present,
      key    => 'NSDisableAutomaticTermination',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable the crash reporter':
      ensure => present,
      key    => 'DialogType',
      domain => 'com.apple.CrashReporter',
      value  => 'none',
      type   => 'string',
      user   => $::boxen_user;

    'Set Help Viewer windows to non-floating mode':
      ensure => present,
      key    => 'DevMode',
      domain => 'com.apple.helpviewer',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Check for software updates once a week':
      ensure => present,
      key    => 'ScheduleFrequency',
      domain => 'com.apple.SoftwareUpdate',
      value  => '7',
      type   => 'int',
      user   => $::boxen_user;
  }

}
