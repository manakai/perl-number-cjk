use strict;
use warnings;
use Path::Tiny;
use lib glob path (__FILE__)->parent->parent->child ('t_deps/lib');
use lib glob path (__FILE__)->parent->parent->child ('t_deps/modules/*/lib');
use Test::X1;
use Test::More;
use Test::HTCT::Parser;
use Number::CJK::Serializer;

my $data_path = path (__FILE__)->parent->parent->child ('t_deps/modules/tests-numbers/cjk/');
for my $path (($data_path->children (qr(^serialize-cjk10000-.*\.dat$)))) {
  for_each_test $path->stringify, {
    in => {is_prefixed => 1},
    out => {is_prefixed => 1},
  }, sub ($) {
    my $test = shift;
    test {
      my $c = shift;
      my $in = $test->{in}->[0];
      my $expected = $test->{out}->[0];
      my $actual = Number::CJK::Serializer->to_cjk_10000_grouped ($in);
      is $actual, $expected;
      done $c;
    } n => 1, name => $test->{name}->[0] // $test->{in}->[0];
  };
}

run_tests;

=head1 LICENSE

Copyright 2023 Wakaba <wakaba@suikawiki.org>.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
