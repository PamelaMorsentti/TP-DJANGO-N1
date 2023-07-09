import pytest

"""
@pytest.mark.skip(reason="no correr el test")
def test_01():
    assert 1 == 1
""" 

@pytest.mark.marca1
def test_01():
    assert 1 == 1
    
@pytest.mark.marca1
def test_02():
    assert 4 == 1
    
@pytest.fixture(scope="session")
def fixture_1():
    print("desde mi fixture antes")
    yield 1
    #return 1
    print("desde mi fixture despuès")

@pytest.mark.marca1
def test_03(fixture_1):
    print("desde test_03")
    variable = fixture_1
    assert fixture_1 == 1

@pytest.mark.marca1
def test_04(fixture_1):
    variable = fixture_1
    print("desde test_04")
    assert fixture_1 == 1
    