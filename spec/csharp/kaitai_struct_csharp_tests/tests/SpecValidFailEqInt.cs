// Autogenerated from KST: please remove this line if doing any edits by hand!

using NUnit.Framework;

namespace Kaitai
{
    [TestFixture]
    public class SpecValidFailEqInt : CommonSpec
    {
        [Test]
        public void TestValidFailEqInt()
        {
            Assert.Throws<ValidationNotEqualError>(
                delegate
                {
                    ValidFailEqInt.FromFile(SourceFile("fixed_struct.bin"));
                }
            );
        }
    }
}
