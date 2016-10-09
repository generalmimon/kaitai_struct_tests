import unittest

from expr_3 import Expr3

class TestExpr3(unittest.TestCase):
    def test_expr_3(self):
        r = Expr3.from_file("src/fixed_struct.bin")

        self.assertEqual(r.one, 80)
        self.assertEqual(r.two, "ACK")

        self.assertEqual(r.three, "@ACK")
        self.assertEqual(r.four, "_ACK_")
        self.assertEqual(r.is_str_eq, True)
        self.assertEqual(r.is_str_ne, False)
        self.assertEqual(r.is_str_lt, True)
        self.assertEqual(r.is_str_gt, False)
        self.assertEqual(r.is_str_le, True)
        self.assertEqual(r.is_str_ge, False)
        self.assertEqual(r.is_str_lt2, True)