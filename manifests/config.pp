class ntp::config (
  String $config_name = $ntp::config_name,
  String $config_mode = $ntp::config_mode,
  Array[String] $servers = $ntp::servers,
) {

  file { 'Set NTP configuration':
    ensure => file,
    name => "/etc/${config_name}",
    owner => 0,
    group => 0,
    mode => $config_mode,
    content => template("${module_name}/ntp.conf.erb")
  }

}
