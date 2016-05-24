#include <boost/test/unit_test.hpp>

#include <expr_1.h>

#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_expr_1) {
    std::ifstream ifs("src/str_encodings.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    expr_1_t* r = new expr_1_t(&ks);

    BOOST_CHECK_EQUAL(r->len_of_1(), 10);
    BOOST_CHECK_EQUAL(r->len_of_1_mod(), 8);
    BOOST_CHECK_EQUAL(r->str1(), "Some ASC");
    BOOST_CHECK_EQUAL(r->str1_len(), 8);

    delete r;
}
