# Installs the node_exporter for exposing metrics to Prometheus server
#
class prometheus::node_exporter {

    include '::prometheus::repo'

    # Install prometheus server package
    package { 'node-exporter':
        ensure => 'present',
    }

    # Ensure service is started
    service { 'node-exporter':
        ensure     => 'running',
        enable     => true,
        hasrestart => true,
        require    => Package['node-exporter'],
    }
}
