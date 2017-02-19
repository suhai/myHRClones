class people::hackreactorworkstations::config::loginitems {

  notify { 'class people::hackreactorworkstations::config::loginitems declared': }

  osx_login_item {
    'ClipMenu':
      name    => 'ClipMenu',
      path    => '/Applications/ClipMenu.app',
      hidden  => true,
      require => Class['clipmenu'];

    'Slate':
      name    => 'Slate',
      path    => '/Applications/Slate.app',
      hidden  => true,
      require => Class['slate'];
  }

}
