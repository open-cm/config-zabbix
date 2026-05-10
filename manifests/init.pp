class config_zabbix (
  Array[String] $features = [],
) {
  if 'server' in $features {
    notify { 'zabbix_server':
      message => 'Zabbix Server feature enabled',
    }
    file { '/tmp/zabbix_server.txt':
      ensure  => file,
      content => 'Zabbix Server configuration is active.',
    }
  }

  if 'agent' in $features {
    notify { 'zabbix_agent':
      message => 'Zabbix Agent feature enabled',
    }
    file { '/tmp/zabbix_agent.txt':
      ensure  => file,
      content => 'Zabbix Agent configuration is active.',
    }
  }

  if 'proxy' in $features {
    notify { 'zabbix_proxy':
      message => 'Zabbix Proxy feature enabled',
    }
    file { '/tmp/zabbix_proxy.txt':
      ensure  => file,
      content => 'Zabbix Proxy configuration is active.',
    }
  }

  if empty($features) {
    notify { 'zabbix_default':
      message => 'Zabbix node with no specific features enabled',
    }
  }
}
