TestLink::API
=============

Perl Interface to TestLink XMLAPI
---------------------------------

Doesn't implement every method provided (yet), just the ones *I* needed:

* Making Projects,Suites,Tests,Plans and Projects
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
