#!/usr/bin/env perl
use Selenium::Remote::Driver;

my $driver = Selenium::Remote::Driver->new({ 
	remote_server_addr => 'selenoid', 
	browser_name => 'chrome', 
});

$driver->get('http://www.google.com');
print $driver->get_title();
