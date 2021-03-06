<?php
// Autogenerated from KST: please remove this line if doing any edits by hand!

namespace Kaitai\Struct\Tests;

class ExprOpsParensTest extends TestCase {
    public function testExprOpsParens() {
        $r = ExprOpsParens::fromFile(self::SRC_DIR_PATH . '/enum_negative.bin');


        $this->assertEquals("29", $r->iSumToStr());
        $this->assertEquals(10, $r->strConcatLen());
        $this->assertEquals("9876543210", $r->strConcatRev());
        $this->assertEquals("23456", $r->strConcatSubstr2To7());
        $this->assertEquals(123456789, $r->strConcatToI());
        $this->assertEquals(0, $r->boolEq());
        $this->assertEquals(0, $r->boolAnd());
        $this->assertEquals(1, $r->boolOr());
    }
}
