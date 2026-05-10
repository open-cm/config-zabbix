class zabbix () {
  notify { 'zabbix_base':
    message => 'Zabbix base class',
  }
}
