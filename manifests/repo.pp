# Ensure we have an apt repository to install prometheus packages from
#
class prometheus::repo {

    include '::apt'

    ::apt::key { 'prometheus-robustperception':
        ensure => 'present',
        id     => '41EFC99D',
        source =>
    'https://s3-eu-west-1.amazonaws.com/deb.robustperception.io/41EFC99D.gpg'
    }

    ::apt::source { 'prometheus-robustperception':
        comment  => 'Unofficial distributor of Prometheus Debian packages',
        location => 'http://deb.robustperception.io/',
        release  => 'precise',
        repos    => 'nightly',
        require  => Apt::Key['prometheus-robustperception']
    }
}
