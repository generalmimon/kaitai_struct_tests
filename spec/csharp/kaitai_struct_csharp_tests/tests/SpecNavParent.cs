// Autogenerated from KST: please remove this line if doing any edits by hand!

using NUnit.Framework;

namespace Kaitai
{
    [TestFixture]
    public class SpecNavParent : CommonSpec
    {
        [Test]
        public void TestNavParent()
        {
            var r = NavParent.FromFile(SourceFile("nav.bin"));

            Assert.AreEqual(r.Header.QtyEntries, 2);
            Assert.AreEqual(r.Header.FilenameLen, 8);
            Assert.AreEqual(r.Index.Entries.Count, 2);
            Assert.AreEqual(r.Index.Entries[0].Filename, "FIRST___");
            Assert.AreEqual(r.Index.Entries[1].Filename, "SECOND__");
        }
    }
}
