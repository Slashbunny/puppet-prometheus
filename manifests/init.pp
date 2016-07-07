# Installs daemon for the Prometheus Server
#
class prometheus {

    include '::prometheus::repo'

    # Install prometheus server package
    package { 'prometheus':
        ensure => 'present',
    }
}
