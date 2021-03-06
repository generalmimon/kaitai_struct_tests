// Autogenerated from KST: please remove this line if doing any edits by hand!

extern crate kaitai_struct;
extern crate rust;

use kaitai_struct::KaitaiStruct;
use rust::ProcessRotate;

#[test]
fn test_process_rotate() {
    if let Ok(r) = ProcessRotate::from_file("src/process_rotate.bin") {
        assert_eq!(r.buf1, vec!([0x48, 0x65, 0x6c, 0x6c, 0x6f]));
        assert_eq!(r.buf2, vec!([0x57, 0x6f, 0x72, 0x6c, 0x64]));
        assert_eq!(r.buf3, vec!([0x54, 0x68, 0x65, 0x72, 0x65]));
    }
}
