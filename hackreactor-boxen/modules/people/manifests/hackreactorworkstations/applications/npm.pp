class people::hackreactorworkstations::applications::npm {

  notify { 'class people::hackreactorworkstations::applications::npm declared': }

  nodejs::module {
    'chai':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'coffee-script':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'coffeelint':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'csslint':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'express':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'grunt-cli':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'grunt-init':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'jscover':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'jsctags':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'jshint':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'mocha':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'mysql':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'mustache':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'node-inspector':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'jasmine-node':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'requirejs':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'request':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'supervisor':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'uglify-js':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'lodash':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];

    'webdriverjs':
      node_version => 'v0.10',
      require      => Class['nodejs::v0_10'];
  }

}
