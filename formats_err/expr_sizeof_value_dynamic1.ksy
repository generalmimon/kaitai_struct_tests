# expr_sizeof_value_dynamic1: /instances/self_sizeof/value: unable to derive sizeof for type `expr_sizeof_value_dynamic1`: dynamic sized type
meta:
  id: expr_sizeof_value_dynamic1
  endian: le
seq:
  - id: len
    type: u1
  - id: body
    size: len
instances:
  self_sizeof:
    value: _sizeof
