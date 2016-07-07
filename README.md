# puppet-prometheus
[![Build Status](https://travis-ci.org/Slashbunny/puppet-prometheus.svg?branch=master)](https://travis-ci.org/Slashbunny/puppet-prometheus)
## Description

WORK IN PROGRESS

This module allows you to install [Prometheus](https://prometheus.io) packages
on Ubuntu servers.

## Usage

Install the Prometheus server:

```puppet
    include ::prometheus
```

Install the `node_exporter` service on a server, to expose machine statistics
to the Prometheus server:

```puppet
    include ::prometheus::node_exporter
```

## Limitations

This module relies on Robust Perception's Debian packages and therefore will
only work on OS' like Ubuntu

