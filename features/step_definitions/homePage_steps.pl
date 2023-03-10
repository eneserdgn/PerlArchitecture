use strict;
use warnings;

use Test::More;
use Test::BDD::Cucumber::StepFile;
use Selenium::Waiter qw/wait_until/;

use lib "lib";
use driverFactory;

my $driver;

Before sub {
    $driver = driverFactory->openBrowser();
};

Given qr/user is on the Home Page/, sub {
    $driver->get_title();
};

When qr/click to Contact Us Button on Home Page/, sub {
    my $contactButton = wait_until {
        $driver->find_element_by_css('#__next > div > header > div.container.flex.h-full.items-center.justify-between > ul > li:nth-child(5) > a')
    } timeout => 10, interval => 3;
    $contactButton->click;
    sleep(3);
};

Then qr/should see the Contact Us Page/, sub {
    my $contactButton = wait_until {
        $driver->find_element_by_css('.mb-5.font-oswald.text-4xl')
    }timeout => 10, interval => 3;
    $contactButton->get_text;
};

When qr/sendkeys Name "(.+)" on Contact Us Page/, sub {
    my $contactButton = wait_until {
        $driver->find_element('//*[@name="firstName"]', "xpath")
    }timeout => 10, interval => 3;
    $contactButton->send_keys(C->matches->[0]);
};

When qr/sendkeys Surname "(.+)" on Contact Us Page/, sub {
    my $contactButton = wait_until {
        $driver->find_element('//*[@name="lastName"]', "xpath")
    }timeout => 10, interval => 3;
    $contactButton->send_keys("Erdogan");
};

When qr/sendkeys Email "(.+)" on Contact Us Page/, sub {
    my $contactButton = wait_until {
        $driver->find_element('//*[@name="email"]', "xpath")
    }timeout => 10, interval => 3;
    $contactButton->send_keys("enes.erdogan\@ronwell.net");
};

When qr/sendkeys Company Name "(.+)" on Contact Us Page/, sub {
    my $contactButton = wait_until {
        $driver->find_element('//*[@name="companyName"]', "xpath")
    }timeout => 10, interval => 3;
    $contactButton->send_keys("Ronwell Dijital");
};

When qr/sendkeys Request "(.+)" on Contact Us Page/, sub {
    my $contactButton = wait_until {
        $driver->find_element('//*[@name="request"]', "xpath")
    }timeout => 10, interval => 3;
    $contactButton->send_keys("bla bla");
};

When qr/click to Contact Button on Contact Us Page/, sub {
    my $contactButton = wait_until {
        $driver->find_element('#__next > div > main > div > div > form > button', "css")
    }timeout => 10, interval => 3;
    my $script = "arguments[0].click();";
    $driver->execute_script($script, $contactButton);
};

Then qr/should see Popup on Contact Us Page/, sub {
    my $contactButton = wait_until {
        $driver->find_element('.w-full.rounded.bg-red-600', "css")
    }timeout => 10, interval => 3;
};

After sub {
    $driver->quit();
};