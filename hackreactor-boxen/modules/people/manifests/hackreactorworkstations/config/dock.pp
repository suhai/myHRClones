class people::hackreactorworkstations::config::dock (
  $my_sourcedir   = $people::hackreactorworkstations::params::my_sourcedir,
  $my_homedir     = $people::hackreactorworkstations::params::my_homedir,
  $my_username    = $people::hackreactorworkstations::params::my_username
) {

  notify { 'class people::hackreactorworkstations::config::dock declared': }

  include dockutil

  dockutil::item {
    'Add Terminal':
        item     => "/Applications/Utilities/Terminal.app",
        label    => "Terminal",
        action   => "add",
        position => 2;

    'Add Chrome':
        item     => "/Applications/Google Chrome.app",
        label    => "Chrome",
        action   => "add",
        position => 3,
        require  => Class["chrome"];

    'Add Firefox':
        item     => "/Applications/Firefox.app",
        label    => "Firefox",
        action   => "add",
        position => 4,
        require  => Class["firefox"];

    'Add Colloquy':
        item     => "/Applications/Colloquy.app",
        label    => "Colloquy",
        action   => "add",
        position => 5,
        require  => Class["colloquy"];

    # 'Add Sublime Text 2':
    #     item     => "/Applications/Sublime Text 2.app",
    #     label    => "Sublime Text 2",
    #     action   => "add",
    #     position => 6,
    #     require  => Class["sublime_text_2"];

    ## Remove all default applications
    'Remove Launchpad':
      item    => "/Applications/Launchpad.app",
      label   => "Launchpad",
      action  => "remove";

    'Remove Mission Control':
      item => "/Applications/Mission Control.app",
      label   => "Mission Control",
      action => "remove";

    'Remove Safari':
      item => "/Applications/Safari.app",
      label   => "Safari",
      action => "remove";

    'Remove Mail':
      item => "/Applications/Mail.app",
      label   => "Mail",
      action => "remove";

    'Remove Contacts':
      item => "/Applications/Contacts.app",
      label   => "Contacts",
      action => "remove";

    'Remove Calendar':
      item => "/Applications/Calendar.app",
      label   => "Calendar",
      action => "remove";

    'Remove Messages':
      item => "/Applications/Messages.app",
      label   => "Messages",
      action => "remove";

    'Remove Reminders':
      item => "/Applications/Reminders.app",
      label   => "Reminders",
      action => "remove";

    'Remove Notes':
      item => "/Applications/Notes.app",
      label   => "Notes",
      action => "remove";

    'Remove FaceTime':
      item => "/Applications/FaceTime.app",
      label   => "FaceTime",
      action => "remove";

    'Remove Photo Booth':
      item => "/Applications/Photo Booth.app",
      label   => "Photo Booth",
      action => "remove";

    'Remove iTunes':
      item => "/Applications/iTunes.app",
      label   => "iTunes",
      action => "remove";

    'Remove App Store':
      item => "/Applications/App Store.app",
      label   => "App Store",
      action => "remove";

    'Remove System Preferences':
      item => "/Applications/System Preferences.app",
      label   => "System Preferences",
      action => "remove";

    'Remove Documents':
      item => "#{my_homedir}/Documents",
      label   => "Documents",
      action => "remove";
  }

}
