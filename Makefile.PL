use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => "TestLink::API",
    VERSION_FROM      => "lib/TestLink/API.pm",
    #Not really sure which versions, but I will make them install via CPAN this way
    PREREQ_PM => {
        "Carp"                => 0,
        "Scalar::Util"        => 0,
        "Data::Validate::URI" => 0,
        "Clone"               => 0,
        "XMLRPC::Lite"        => 0
    }
);
