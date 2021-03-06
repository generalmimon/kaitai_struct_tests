# Autogenerated from KST: please remove this line if doing any edits by hand!

package spec::perl::TestSwitchElseOnly;

use strict;
use warnings;
use base qw(Test::Class);
use Test::More;
use SwitchElseOnly;

sub test_switch_else_only: Test(4) {
    my $r = SwitchElseOnly->from_file('src/switch_opcodes.bin');


    is($r->opcode(), 83, 'Equals');
    is($r->prim_byte(), 102, 'Equals');
    is($r->struct()->value(), pack('C*', (111, 111, 98, 97)), 'Equals');
    is($r->struct_sized()->value(), pack('C*', (114, 0, 73, 66)), 'Equals');
}

Test::Class->runtests;
