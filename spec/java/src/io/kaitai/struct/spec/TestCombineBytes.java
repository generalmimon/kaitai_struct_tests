// Autogenerated from KST: please remove this line if doing any edits by hand!

package io.kaitai.struct.spec;

import io.kaitai.struct.testformats.CombineBytes;
import org.testng.annotations.Test;
import static org.testng.Assert.*;
public class TestCombineBytes extends CommonSpec {

    @Test
    public void testCombineBytes() throws Exception {
        CombineBytes r = CombineBytes.fromFile(SRC_DIR + "term_strz.bin");

        assertEquals(r.bytesTerm(), new byte[] { 102, 111, 111 });
        assertEquals(r.bytesLimit(), new byte[] { 98, 97, 114, 124 });
        assertEquals(r.bytesEos(), new byte[] { 98, 97, 122, 64 });
        assertEquals(r.bytesCalc(), new byte[] { 82, 110, 68 });
        assertEquals(r.termOrLimit(), new byte[] { 102, 111, 111 });
        assertEquals(r.termOrEos(), new byte[] { 98, 97, 122, 64 });
        assertEquals(r.termOrCalc(), new byte[] { 102, 111, 111 });
        assertEquals(r.limitOrEos(), new byte[] { 98, 97, 114, 124 });
        assertEquals(r.limitOrCalc(), new byte[] { 82, 110, 68 });
        assertEquals(r.eosOrCalc(), new byte[] { 98, 97, 122, 64 });
    }
}