import pytest
from vista.models import Producto
from vista.models import Categoria
from django.contrib.auth.models import User
import datetime
from faker import Faker
fake = Faker()

@pytest.fixture()
def crear_producto(db): # para que pueda usar la base de datos requiere el parametro db 
    mi_producto = Producto(producto = "Producto 4", fecha_publicacion=datetime.datetime.now())
    mi_producto.save()
    return mi_producto

@pytest.fixture()
def crear_producto_factory(db): # declaracio del fixture con la db
    categoria1 = Categoria(nombre="Cat1", slug="cat1") #vamos a generar una categoria que pueda ser usada por el producto
    categoria1.save()
    # voy a generar una funcion cmo una plantilla, para poder establecer los atributos que tendra nuesta clase
    def crear_producto(
        estado : str = "Borrador",
        producto :str = "Producto_1",
        fecha_publicacion = datetime.datetime.now(),
        imagen : str = "ruta",
        categoria = categoria1,
    ):
        # ahora vamos a poner la construccion de un producto
        mi_producto = Producto(
            estado = estado,
            producto = producto,
            fecha_publicacion = fecha_publicacion,
            imagen = imagen,
            categoria = categoria,
        )
        mi_producto.save()
        return mi_producto
    return crear_producto

# ahora creamos un fixture que utiliza lo anterior crear_producto_factory
@pytest.fixture()
def producto(db, crear_producto_factory):
    return crear_producto_factory("Borrador", fake.name(), fake.date(), fake.file_path()) # alimentamos con datos





















































