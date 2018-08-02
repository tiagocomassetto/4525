class init {

file {"/etc/puppetlabs/puppet/puppet.conf":
	source => "puppet:///modules/init/puppet.conf",
	ensure => present,	
}

case $::osfamily {

"Redhat": {

$pacotes = [ "vim", "htop", "sysstat", "epel-release", "httpd" ]

}

"Debian": {

$pacotes = [ "vim", "htop", "sysstat", "figlet", "apache2" ]

exec {"atualizar_repositorio":
	command => "/usr/bin/apt update"
}

}

}

package {$pacotes:
	ensure => present,
}


file {'/var/www/html/index.html':
	ensure  => file,
	content => template('/etc/puppetlabs/code/environments/production/modules/init/template/index.html.erb'),
}

$user = ["devops", "suporte"]

user {$user:
	ensure => present,
}

}
