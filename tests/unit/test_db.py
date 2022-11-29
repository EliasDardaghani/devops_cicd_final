from shop_app import db


def test_db_conf():
    assert not isinstance(db.get_db_config(), dict)
