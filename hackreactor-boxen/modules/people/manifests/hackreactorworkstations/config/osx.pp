class people::hackreactorworkstations::config::osx {

  notify { 'class people::hackreactorworkstations::config::osx declared': }

  exec { 'Show the ~/Library folder':
    command => "chflags nohidden ${my_homedir}/Library",
  }

  exec { 'Restart automatically if OS X freezes':
    command => 'systemsetup -setrestartfreeze on',
  }

  include osx_config::animations
  include osx_config::dashboard
  include osx_config::desktop
  include osx_config::disable_gatekeeper
  include osx_config::diskutility
  include osx_config::dock
  include osx_config::finder
  include osx_config::keyboard
  include osx_config::missioncontrol
  include osx_config::mouse
  include osx_config::safari
  include osx_config::screen
  include osx_config::system
  include osx_config::terminal
  include osx_config::textedit
  include osx_config::timemachine

}
