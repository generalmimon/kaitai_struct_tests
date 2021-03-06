<?php
// Autogenerated from KST: please remove this line if doing any edits by hand!

namespace Kaitai\Struct\Tests;

class RecursiveOneTest extends TestCase {
    public function testRecursiveOne() {
        $r = RecursiveOne::fromFile(self::SRC_DIR_PATH . '/fixed_struct.bin');

        $this->assertSame(80, $r->one());
        $this->assertSame(65, $r->next()->one());
        $this->assertSame(67, $r->next()->next()->one());
        $this->assertSame(11595, $r->next()->next()->next()->finisher());
    }
}
