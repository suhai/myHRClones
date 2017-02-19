class osx_config::disable_gatekeeper {

  exec { 'Disable Gatekeeper':
    command => 'spctl --master-disable',
    unless  => 'spctl --status | grep disabled',
  }

}
