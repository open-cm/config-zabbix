class zabbix::server () {
  notify { 'zabbix_server':
    message => 'Zabbix Server node',
  }
  file { '/tmp/zabbix_server.txt':
    ensure  => file,
    content => 'Zabbix Server configuration is active.',
  }
}
