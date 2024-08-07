use strict;
use warnings;
use Path::Tiny;
use lib glob path (__FILE__)->parent->parent->child ('t_deps/lib');
use lib glob path (__FILE__)->parent->parent->child ('t_deps/modules/*/lib');
use Test::X1;
use Test::More;
use Number::CJK::Parser;

use TestData;
our $Tests;

for my $input (sort { $a cmp $b } keys %$Tests) {
  my $expected = $Tests->{$input};
  test {
    my $c = shift;
    my $result = parse_cjk_number $input;
    if (defined $expected) {
      is $result, 0+$expected;
    } else {
      is $result, $expected;
    }
    done $c;
  } n => 1, name => $input;
} # $test

run_tests;

=head1 LICENSE

Copyright 2015-2019 Wakaba <wakaba@suikawiki.org>.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
