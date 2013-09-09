# Class: extfacter
#
# This module manages extfacter
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class extfacter {
define extfacter ($factname = $title, $value) {
 

  ensure_resource ( 'file', '/etc/facter/', {
    'ensure' => 'directory',
    'mode'   => '0755',
    'owner'  => 'root',
    'group'  => 'root',
    } )

 ensure_resource ( 'file', '/etc/facter/facts.d/', {
    'ensure' => 'directory',
    'mode' => '0755',
    'owner' => 'root',
    'group' => 'root',
   
    } )
 file { "/etc/facter/facts.d/${factname}.yaml" :
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => '0644',
     content => "${factname}: ${value}"

} 
 

}

}
