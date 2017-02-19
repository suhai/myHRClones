class people::hackreactorworkstations::applications::main {

  notify { 'class people::hackreactorworkstations::applications::main declared': }

  include ctags
  include mongodb
  include mysql
  include phantomjs
  include postgresql
  include tmux

  include clipmenu
  include colloquy
  include chrome::canary
  include cyberduck
  include emacs
  include iterm2::dev
  include mou
  include pckeyboardhack
  include slate
  include virtualbox


  # Homebrew Packages
  package {
    [
      'heroku-toolbelt',
      'reattach-to-user-namespace',
      'selenium-server-standalone',
      'ssh-copy-id',
      'sshfs',
      'vimpager'
    ]:
  }

}
