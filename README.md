TestLink::API
=============

<img src="https://travis-ci.org/teodesian/TestLink-Perl.svg" alt="Travis CI build status" />
<a href='https://coveralls.io/r/teodesian/TestLink-Perl'><img src='https://coveralls.io/repos/teodesian/TestLink-Perl/badge.svg' alt='Coverage Status' /></a>

Perl Interface to TestLink XMLAPI
---------------------------------

Doesn't implement every method provided (yet), just the ones *I* needed:

* Making Projects,Suites,Tests,Plans and Builds
* Getting the same
* Setting test run statuses and execution attachments
* Dumping the entire test tree.

Basically everything needed to sync up automated test runs to the test management DB.

> my $url = 'http://some.testlink.install/testlink/xmlrpc.php';
> 
> my $apikey = 'gobbledygook123';
> 
> my $apiClient = new TestLink::API($url,$apikey);

See POD for more info.
