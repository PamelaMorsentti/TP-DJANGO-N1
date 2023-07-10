from django.shortcuts import render
from django.http import HttpResponse
from django.db.models import Q
from vista.models import Producto
# Create your views here.
"""
def index(request):
    return HttpResponse("Hola Mundo!")
    """

def index(request):
    params = {}
    params ["nombre_sitio"] = "Portfolio Cabral Ingenieria"
    #producto = Producto.objects.filter( Q(estado="Publicado"),)
    #params["producto"] = producto
    #print(producto)
    return render(request, "vista/index.html", params)

# por cada nueva pagina debe haber alguien que administre lo que va a haber en esa pagina
def producto(request):
    params = {}
    params ["nombre_sitio"] = "Portfolio Cabral Ingenieria"
    return render(request, "vista/producto.html", params)

# vamos a hacer una pagina de prueba, cuando en la url se llama a la pagino mi_prueba_ruta
# nos redirecciona a esta funcion que nos devuelve la pagina prueba.html
def pruebafuncion(request):
    params = {}
    params ["nombre_sitio"] = "Portfolio Cabral Ingenieria"
    return render(request, "vista/prueba.html", params)
