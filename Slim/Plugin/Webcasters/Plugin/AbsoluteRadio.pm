package Slim::Plugin::Webcasters::Plugin::AbsoluteRadio;

# $Id$

use strict;
use base qw(Slim::Plugin::OPMLBased Slim::Plugin::Webcasters::Plugin);

sub feed { Slim::Networking::SqueezeNetwork->url('/public/radio/absolute') }

sub initPlugin {
	my $class = shift;

	# Will call OPMLBased's initPlugin method
	$class->SUPER::initPlugin(
		tag    => 'webcaster_absolute',
		menu   => 'radios',
		weight => 100,
	);
}

sub getDisplayName { 'PLUGIN_WEBCASTERS_ABSOLUTE' }

sub playerMenu { 'RADIO' }

# Use the Webcaster plugin data
sub _pluginDataFor {
	my $class = shift;
	return Slim::Plugin::Webcasters::Plugin->_pluginDataFor(@_);
}

1;