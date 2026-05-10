class zabbix::agent () {
  notify { 'zabbix_agent':
    message => 'Zabbix Agent node',
  }
  file { '/tmp/zabbix_agent.txt':
    ensure  => file,
    content => 'Zabbix Agent configuration is active.',
  }
}
