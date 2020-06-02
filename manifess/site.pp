node deafult {
  file {'/root/README':
      ensure => file,
      content => 'this is a readme',
      }
}
