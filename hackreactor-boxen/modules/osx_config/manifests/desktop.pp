class osx_config::desktop {

  exec { 'Enable snap-to-grid for icons on the desktop':
    command => '/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Enable snap-to-grid for icons in icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase grid spacing for icons on the desktop':
    command => '/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase grid spacing for icons in icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase the size of icons on the desktop and in other icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase the size of icons in icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist',
  }

}
