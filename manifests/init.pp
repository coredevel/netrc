class netrc {

}

define netrc::foruser($root_home_directory="/home",$user, $machine_user_password_triples) {
	$filename = ".netrc"
	$prefixes = ['machine ','	login ','	password ']
	
	if $root_home_directory != "/home" {
		$netrc_path = $root_home_directory
	} else {
		$netrc_path = "$root_home_directory/$user"
	}

	file { "$netrc_path/$filename":
		ensure => present,
		content => template('netrc/netrc.erb'),
		mode => '0600',
		owner => "$user"		
	}
}