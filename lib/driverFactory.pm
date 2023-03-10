package driverFactory;

use strict;
use warnings;

use Test::More;
use Test::BDD::Cucumber::StepFile;
use FindBin qw($RealBin);
use Selenium::Chrome qw();

my $driver;

sub openBrowser {
    $driver = Selenium::Chrome->new(
        binary => "$RealBin/chromedriver.exe",
    );

    $driver->get('https://ronwelldigital.com/');
    $driver->maximize_window();
    return ($driver);
}

sub getDriver {
    return ($driver);
}

1;