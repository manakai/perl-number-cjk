package Number::CJK::Parser;
$Digit = qr{[0-9\x{3007}\x{4E00}\x{4E03}\x{4E09}\x{4E5D}\x{4E8C}\x{4E94}\x{4E96}\x{4F0D}\x{516B}\x{516D}\x{53C1}-\x{53C4}\x{56DB}\x{58F1}\x{58F9}\x{5F0C}-\x{5F0E}\x{5F10}\x{634C}\x{67D2}\x{6F06}\x{7396}\x{8086}\x{8CAE}\x{8CB3}\x{8CEA}\x{8D30}\x{9646}\x{9678}\x{96F6}\x{FF10}-\x{FF19}]};
$And = qr{[\x{6709}\x{53c8}]};
$Dot = qr{[.\xb7\x{30FB}\x{FF0E}]};
$Sep = qr{[\x20,\xA0\xB7\x{2009}\x{202F}\x{FF0C}]};
$NonZero = qr{[1-9\x{4E00}\x{4E03}\x{4E09}\x{4E5D}\x{4E8C}\x{4E94}\x{4E96}\x{4F0D}\x{516B}\x{516D}\x{53C1}-\x{53C4}\x{56DB}\x{58F1}\x{58F9}\x{5F0C}-\x{5F0E}\x{5F10}\x{634C}\x{67D2}\x{6F06}\x{7396}\x{8086}\x{8CAE}\x{8CB3}\x{8CEA}\x{8D30}\x{9646}\x{9678}\x{FF11}-\x{FF19}]};
$Zero = qr{[0\x{3007}\x{96F6}\x{FF10}]};
$TenOctillion = qr{[\x{7a63}\x{7a70}]};
$Septillion = qr{[\x{79ed}\x{25771}]};
$HundredQuintillion = qr{[\x{5793}]};
$TenQuadrillion = qr{[\x{4EAC}]};
$Trillion = qr{[\x{5146}]};
$HundredMillion = qr{[\x{4EBF}\x{5104}]};
$TenThousand = qr{[\x{4E07}\x{842C}]};
$Thousand = qr{[\x{4EDF}\x{5343}\x{9621}]};
$Hundred = qr{[\x{4F70}\x{767E}\x{964C}]};
$MultipleHundreds = qr{[\x{7695}]};
$Ten = qr{[\x{5341}\x{62FE}]};
$MultipleTens = qr{[\x{4E17}\x{5344}-\x{5345}\x{534C}\x{5EFE}-\x{5EFF}\x{2099C}]};
$Value = $VAR1 = {
          '0' => 0,
          '1' => 1,
          '2' => 2,
          '3' => 3,
          '4' => 4,
          '5' => 5,
          '6' => 6,
          '7' => 7,
          '8' => 8,
          '9' => 9,
          "\x{3007}" => 0,
          "\x{4e00}" => 1,
          "\x{4e03}" => 7,
          "\x{4e07}" => 10000,
          "\x{4e09}" => 3,
          "\x{4e17}" => 30,
          "\x{4e5d}" => 9,
          "\x{4e8c}" => 2,
          "\x{4e94}" => 5,
          "\x{4e96}" => 4,
          "\x{4eac}" => '10000000000000000',
          "\x{7a70}" => "10000000000000000000000000000",
          "\x{7a63}" => "10000000000000000000000000000",
          "\x{79ed}" => "1000000000000000000000000",
          "\x{25771}" => "1000000000000000000000000",
          "\x{5793}" => "100000000000000000000",
          "\x{4ebf}" => 100000000,
          "\x{4edf}" => 1000,
          "\x{4f0d}" => 5,
          "\x{4f70}" => 100,
          "\x{5104}" => 100000000,
          "\x{5146}" => '1000000000000',
          "\x{516b}" => 8,
          "\x{516d}" => 6,
          "\x{5341}" => 10,
          "\x{5343}" => 1000,
          "\x{5344}" => 20,
          "\x{5345}" => 30,
          "\x{534c}" => 40,
          "\x{53c1}" => 3,
          "\x{53c2}" => 3,
          "\x{53c3}" => 3,
          "\x{53c4}" => 3,
          "\x{56db}" => 4,
          "\x{58f1}" => 1,
          "\x{58f9}" => 1,
          "\x{5efe}" => 20,
          "\x{5eff}" => 20,
          "\x{5f0c}" => 1,
          "\x{5f0d}" => 2,
          "\x{5f0e}" => 3,
          "\x{5f10}" => 2,
          "\x{62fe}" => 10,
          "\x{634c}" => 8,
          "\x{67d2}" => 7,
          "\x{6f06}" => 7,
          "\x{7396}" => 9,
          "\x{767e}" => 100,
          "\x{7695}" => 200,
          "\x{8086}" => 4,
          "\x{842c}" => 10000,
          "\x{8cae}" => 2,
          "\x{8cb3}" => 2,
          "\x{8cea}" => 7,
          "\x{8d30}" => 2,
          "\x{9621}" => 1000,
          "\x{9646}" => 6,
          "\x{964c}" => 100,
          "\x{9678}" => 6,
          "\x{96f6}" => 0,
          "\x{ff10}" => 0,
          "\x{ff11}" => 1,
          "\x{ff12}" => 2,
          "\x{ff13}" => 3,
          "\x{ff14}" => 4,
          "\x{ff15}" => 5,
          "\x{ff16}" => 6,
          "\x{ff17}" => 7,
          "\x{ff18}" => 8,
          "\x{ff19}" => 9,
          "\x{2099c}" => 40
        };
;1;
