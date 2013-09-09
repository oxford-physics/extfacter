# extfacter #

This module is use to create custom fact as decscribed here
https://puppetlabs.com/blog/facter-1-7-introduces-external-facts 

To create a facter names 'hostgroup' with value 'grid_wn'

``` extfacter {'hostgroup': value => 'grid_wn' } ```
