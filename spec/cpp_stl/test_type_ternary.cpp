#include <boost/test/unit_test.hpp>

#include <type_ternary.h>

#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_type_ternary) {
    std::ifstream ifs("src/term_strz.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    type_ternary_t* r = new type_ternary_t(&ks);

    BOOST_CHECK_EQUAL(r->dif()->value(), 0x65);

    delete r;
}
