class people::hackreactorworkstations::config::dotfiles (
  $my_sourcedir   = $people::hackreactorworkstations::params::my_sourcedir,
  $my_homedir     = $people::hackreactorworkstations::params::my_homedir,
  $my_username    = $people::hackreactorworkstations::params::my_username
) {

  notify { 'class people::hackreactorworkstations::config::dotfiles declared': }

  git::config::global {
    # Core identity settings
    'user.name':         value => 'Hack Reactor Students';
    'user.email':        value => 'github@hackreactor.com';

    # Core config
    'core.editor':       value => 'subl --wait';
    'core.pager':        value => 'less';

    # Coloration settings
    'color.ui':          value => 'true';
    'color.branch':      value => 'auto';
    'color.diff':        value => 'auto';
    'color.status':      value => 'auto';
  }

  repository {
    "dotfiles":
      source   => 'hackreactor/hackreactor-dotfiles',
      path     => "${my_sourcedir}/dotfiles";
  }

  file { "${my_homedir}/.bash_profile":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/bash_profile",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.bashrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/bashrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.emacs.d":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/emacs.d",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.inputrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/inputrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.login_conf":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/login_conf",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.screenrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/screenrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.slate.js":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/slate.js",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.tmux.conf":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/tmux.conf",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.vimrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/vimrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/Library/Preferences/com.apple.terminal.plist":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/osx-settings/com.apple.terminal.plist",
    require => Repository["dotfiles"],
  }

}
