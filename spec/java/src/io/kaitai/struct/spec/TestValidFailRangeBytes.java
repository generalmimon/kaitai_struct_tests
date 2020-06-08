// Autogenerated from KST: please remove this line if doing any edits by hand!

package io.kaitai.struct.spec;

import io.kaitai.struct.testformats.ValidFailRangeBytes;
import org.testng.annotations.Test;
import static org.testng.Assert.*;
import io.kaitai.struct.KaitaiStream;
public class TestValidFailRangeBytes extends CommonSpec {

    @Test(expectedExceptions = KaitaiStream.ValidationGreaterThanError.class)
    public void testValidFailRangeBytes() throws Exception {
        ValidFailRangeBytes r = ValidFailRangeBytes.fromFile(SRC_DIR + "fixed_struct.bin");
    }
}