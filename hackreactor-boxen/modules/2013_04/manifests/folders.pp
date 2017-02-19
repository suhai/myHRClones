class 2013_04::folders (
  $my_sourcedir   = $people::hackreactorworkstations::params::my_sourcedir,
  $my_homedir     = $people::hackreactorworkstations::params::my_homedir,
  $my_username    = $people::hackreactorworkstations::params::my_username
) {
  file {
    [
      "${my_homedir}/code/banjolina-jolie",
      "${my_homedir}/code/bchu",
      "${my_homedir}/code/bgando",
      "${my_homedir}/code/bsalazar91",
      "${my_homedir}/code/CharlesHolbrow",
      "${my_homedir}/code/combizs",
      "${my_homedir}/code/ebeal",
      "${my_homedir}/code/ericrius1",
      "${my_homedir}/code/ferment",
      "${my_homedir}/code/g-palmer",
      "${my_homedir}/code/gdi2290",
      "${my_homedir}/code/googamanga",
      "${my_homedir}/code/jseip1679",
      "${my_homedir}/code/kevinhamiltonsmith",
      "${my_homedir}/code/rssathe",
      "${my_homedir}/code/rtjoseph11",
      "${my_homedir}/code/sheltowt",
      "${my_homedir}/code/smoothgit",
      "${my_homedir}/code/walfly",
      "${my_homedir}/code/xdryl",
    ]:
    ensure => "directory",
  }
}


