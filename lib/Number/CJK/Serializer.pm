package Number::CJK::Serializer;
use strict;
use warnings;

sub to_cjk_10000_grouped ($$) {
  use utf8;
  
  my $input = 0+$_[1];
  my @r;

  my $neg = $input < 0;
  $input = -$input if $neg;
  
  my $jou = int ($input / 10000000000000000000000000000);
  push @r, $jou . '穣' if $jou;
  
  my $jo = int (($input % 10000000000000000000000000000) / 1000000000000000000000000);
  push @r, $jo . '𥝱' if $jo;
  
  my $gai = int (($input % 1000000000000000000000000) / 100000000000000000000);
  push @r, $gai . '垓' if $gai;
  
  my $kei = int (($input % 100000000000000000000) / 10000000000000000);
  push @r, $kei . '京' if $kei;
  
  my $chou = int (($input % 10000000000000000) / 1000000000000);
  push @r, $chou . '兆' if $chou;
  
  my $oku = int (($input % 1000000000000) / 100000000);
  push @r, $oku . '億' if $oku;
  
  my $man = int (($input % 100000000) / 10000);
  push @r, $man . '万' if $man;
  
  my $one = $input % 10000;
  push @r, $one if $one or not @r;
  return 0 if $one eq 'NaN' or $one eq 'nan' or $one eq '-nan';

  unshift @r, "\x{2212}" if $neg;

  return join '', @r;
} # to_cjk_10000_grouped

1;

=head1 LICENSE

Copyright 2023-2024 Wakaba <wakaba@suikawiki.org>.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
