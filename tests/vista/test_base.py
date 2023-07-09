import pytest
from vista.models import Producto
from django.contrib.auth.models import User
import datetime

"""
lo pasamos al archivo conftest.py

@pytest.fixture()
def crear_producto(db): # para que pueda usar la base de datos requiere el parametro db 
    mi_producto = Producto(producto = "Producto 4", fecha_publicacion=datetime.datetime.now())
    mi_producto.save()
    return mi_producto
"""

@pytest.mark.django_db
def test_cambiar_estado(crear_producto): # este test esta alimentado por el fixture crear_producto
    print("Cambio de estado de producto")
    assert crear_producto.producto == "Producto 4"

@pytest.mark.django_db
def test_crear_producto():
    mi_producto = Producto(producto = "Producto 3", fecha_publicacion=datetime.datetime.now())
    mi_producto.save()
    print(mi_producto.producto)
    assert mi_producto.producto == "Producto 3"
    
# para testear el esatod del producto
@pytest.mark.django_db
def test_cambiar_estado(producto): # este test esta alimentado por el fixture crear_producto
    print(producto.estado)
    print(producto.producto)
    assert producto.estado == "Borrador"
