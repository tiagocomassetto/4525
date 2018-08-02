class user {

user { "judith":
	ensure => 'present',
	managehome => 'true',
	shell => '/bin/bash',
	home => '/srv/ju',
	password => '$1$8eKjRUb2$prPqJR2hLKsCDkkf/5wVV/',
}

user { "jorge":
        ensure => 'present',
        managehome => 'true',
        shell => '/bin/bash',
        home => '/srv/jo',
        password => '$1$8eKjRUb2$prPqJR2hLKsCDkkf/5wVV/',
}

}
