class people::hackreactorworkstations::applications::gems {

  notify { 'class people::hackreactorworkstations::gems declared': }

  ruby::gem {
    "bundler for 1.9.3":
      gem     => 'bundler',
      ruby    => '1.9.3',
      version => '~> 1.3.5';

    "compass for 1.9.3":
      gem     => 'compass',
      ruby    => '1.9.3',
      version => '~> 0.12.2';

    "compass-rails for 1.9.3":
      gem     => 'compass-rails',
      ruby    => '1.9.3',
      version => '~> 1.0.3';

    "guard for 1.9.3":
      gem     => 'guard',
      ruby    => '1.9.3',
      version => '~> 1.7.0';

    "pry for 1.9.3":
      gem     => 'pry',
      ruby    => '1.9.3',
      version => '~> 0.9.12';

    "rails for 1.9.3":
      gem     => 'rails',
      ruby    => '1.9.3',
      version => '~> 3.2.13';

    "rspec for 1.9.3":
      gem     => 'rspec',
      ruby    => '1.9.3',
      version => '~> 2.13.0';

    "ruhoh for 1.9.3":
      gem     => 'ruhoh',
      ruby    => '1.9.3',
      version => '~> 1.1';

    "sass for 1.9.3":
      gem     => 'sass',
      ruby    => '1.9.3',
      version => '~> 3.2.7';
  }

}
