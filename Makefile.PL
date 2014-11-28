use 5.010;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => "TestLink::API",
    VERSION_FROM      => "lib/TestLink/API.pm",
    MIN_PERL_VERSION  => '5.010',
    #Not really sure which versions, but I will make them install via CPAN this way
    TEST_REQUIRES     => {
        "Test::More"          => 0,
        "Test::Fatal"         => 0,
        "MIME::Base64"        => 0,
        "Class::Inspector"    => 0,
        "Prompt::Timeout"     => 0,
        "Test::Pod"           => 0,
        "Test::Pod::Coverage" => 0
    },
    PREREQ_PM => {
        "Carp"                => 0,
        "Scalar::Util"        => 0,
        "Data::Validate::URI" => 0,
        "Clone"               => 0,
        "XMLRPC::Lite"        => 0
    },
    META_MERGE => {
        'meta-spec' => { version => 2 },
        name        => 'TestLink::API',
        abstract    => "Provides an interface to TestLink's XMLRPC api",
        author      => ['George S. Baugh <teodesian@cpan.org>'],
        resources   => {
             repository => {
                 type => 'git',
                 url  => 'https://github.com/teodesian/TestLink-Perl.git',
                 web  => 'https://github.com/teodesian/TestLink-Perl',
             },
        },
        license => ['artistic_2'],
        prereqs => {
            runtime => {
                requires => {
                    'perl'                => '5.010',
                    "Carp"                => 0,
                    "Scalar::Util"        => 0,
                    "Data::Validate::URI" => 0,
                    "Clone"               => 0,
                    "XMLRPC::Lite"        => 0
                }
            },
            test => {
                requires => {
                    "Test::More"          => 0,
                    "Test::Fatal"         => 0,
                    "MIME::Base64"        => 0,
                    "Class::Inspector"    => 0,
                    "Prompt::Timeout"     => 0,
                    "Test::Pod"           => 0,
                    "Test::Pod::Coverage" => 0
                },
            }
        },
        provides => {
            'TestLink::API' => {
                file    => 'lib/TestLink/API.pm',
                version => '0.008'
            }
        }
    }
);
