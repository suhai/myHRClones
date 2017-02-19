class 2013_03::folders (
  $my_sourcedir   = $people::hackreactorworkstations::params::my_sourcedir,
  $my_homedir     = $people::hackreactorworkstations::params::my_homedir,
  $my_username    = $people::hackreactorworkstations::params::my_username
) {
  file {
    [
      "${my_homedir}/code/alexpaley",
      "${my_homedir}/code/AndrewMagliozzi",
      "${my_homedir}/code/bigthyme",
      "${my_homedir}/code/blakeembrey",
      "${my_homedir}/code/chadreed-intl",
      "${my_homedir}/code/clumma",
      "${my_homedir}/code/cultofmetatron",
      "${my_homedir}/code/gigmania",
      "${my_homedir}/code/jasonk54",
      "${my_homedir}/code/JDvorak",
      "${my_homedir}/code/magee",
      "${my_homedir}/code/magicgrl111",
      "${my_homedir}/code/marklee22",
      "${my_homedir}/code/nealbarbaro",
      "${my_homedir}/code/psyduk",
      "${my_homedir}/code/ruanp",
      "${my_homedir}/code/sellds4",
      "${my_homedir}/code/seung",
      "${my_homedir}/code/timmysze",
      "${my_homedir}/code/YoungNeem",
    ]:
    ensure => "directory",
  }
}
