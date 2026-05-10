class zabbix::proxy () {
  notify { 'zabbix_proxy':
    message => 'Zabbix Proxy node',
  }
  file { '/tmp/zabbix_proxy.txt':
    ensure  => file,
    content => 'Zabbix Proxy configuration is active.',
  }
}
