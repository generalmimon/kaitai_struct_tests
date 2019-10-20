using NUnit.Framework;
using System.IO;

namespace Kaitai
{
    [TestFixture]
    public class SpecEosExceptionU4 : CommonSpec
    {
        [Test]
        public void TestEosExceptionU4()
        {
            Assert.Throws<EndOfStreamException>(
                delegate {
                    EosExceptionU4.FromFile(SourceFile("term_strz.bin"));
                }
            );
        }
    }
}
