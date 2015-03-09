class netrc {

}

define netrc::foruser($root_home_directory="/home",$user, $machine_user_password_triples) {
	$filename = ".netrc"
	$prefixes = ['machine ','	login ','	password ']
	
	file { "$root_home_directory/$user/$filename":
		ensure => present,
		content => template('netrc/netrc.erb'),
		mode => '0600',
		owner => "$user"		
	}
}