def test_index_route(client):
    resp = client.get('/')
    assert resp.status_code == 200
    assert resp.data == 'Yo'
