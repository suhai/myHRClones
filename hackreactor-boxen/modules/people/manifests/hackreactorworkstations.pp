class people::hackreactorworkstations {

  include people::hackreactorworkstations::params
  include people::hackreactorworkstations::files

  include people::hackreactorworkstations::applications::main
  include people::hackreactorworkstations::applications::gems
  include people::hackreactorworkstations::applications::npm
  include people::hackreactorworkstations::applications::sublime_text_2
  include people::hackreactorworkstations::applications::vim

  include people::hackreactorworkstations::config::dock
  include people::hackreactorworkstations::config::dotfiles
  include people::hackreactorworkstations::config::loginitems
  include people::hackreactorworkstations::config::osx

  notify { 'class people::hackreactorworkstations declared': }

}
