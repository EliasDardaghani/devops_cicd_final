import requests


def test_start(config):
    response = requests.get(config.base_url, timeout=config.TIMEOUT)
    assert response.headers['content-type'] == 'text/html; charset=utf-8'
    assert response.status_code == 200


def test_index(config):
    response = requests.get("http://127.0.0.1:5000/product")
    data = {'id': 3, 'name': 'Screwdriver', 'price': 79}
    assert data in response.json()


def test_error(config):
    response = requests.get("http://127.0.0.1:5000/product/error")
    assert "error" in response.json()
