use strict;
use warnings;

use Test::Pod 'tests' => 2;
use Test::Pod::Coverage;
use TestLink::API;

my @pobjfiles = map { $INC{$_} } ('TestLink/API.pm');
foreach my $pm (@pobjfiles) {
    pod_file_ok($pm);
}

my @modules = ('TestLink::API');
foreach my $mod (@modules) {
    pod_coverage_ok($mod);
}
