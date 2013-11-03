class tomcat::params {

  $version = $::osfamily? {
    Debian => '7',
    RedHat => $::lsbmajdistrelease ? {
      '5' => '5',
      '6' => '6',
    }
  }

  $instance_basedir = '/srv/tomcat'
  $sources_src = 'http://archive.apache.org/dist/tomcat/'

}
