#!/usr/bin/env perl

use Test::More;
use App::Cmd::Tester;
use Luga::App;

{
        my $result = test_app('Luga::App' => [ qw(-s) ]);
        is ($result->stderr, '', 'no output to standard error');
        like ($result->stdout, qr/started/, 'workshop started');
}

done_testing();
