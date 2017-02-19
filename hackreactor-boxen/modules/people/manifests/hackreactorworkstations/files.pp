class people::hackreactorworkstations::files (
  $my_sourcedir   = $people::hackreactorworkstations::params::my_sourcedir,
  $my_homedir     = $people::hackreactorworkstations::params::my_homedir,
  $my_username    = $people::hackreactorworkstations::params::my_username
) {

  # Enable class-specific folders
  include 2013_03::folders
  include 2013_04::folders

  file { "${my_homedir}/bin":
    ensure  => directory,
  }

  file { "${my_homedir}/code":
    ensure  => directory,
  }

  file { "${my_homedir}/tmp":
    ensure  => link,
    target  => "/tmp",
  }

}
