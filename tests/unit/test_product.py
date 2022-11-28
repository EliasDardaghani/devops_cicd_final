from shop_app import product


def test_lawea():
    tools = [(1, "Hammer", 199)]
    info = [("id", 1),
            ("name", 1),
            ("price", 1),
            ]
    lawea = product.include_column_names(tools, info)
    assert lawea == [{"id": 1, "name": "Hammer", "price": 199},]


def test_lawea2():
    tools = [(2, "Nail", 99)]
    info = [("id", 2),
            ("name", 2),
            ("price", 1),
            ]
    lawea2 = product.include_column_names(tools, info)
    assert lawea2 == [{"id": 2, "name": "Nail", "price": 99},]
