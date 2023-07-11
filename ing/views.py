from django.shortcuts import render
from django.http import HttpResponse
from django.db.models import Q
from vista.models import Producto
from ing.models import Servicio
from ing.models import CategoriaServicio

# Create your views here.
def index(request):
    params = {}
    params ["nombre_sitio"] = "Portfolio Cabral Ingenieria"
    servicio = Servicio.objects.filter( Q(estado="Estudio"),) # vamos a generar una variable que apunte al listado de elementos del Servicio, object, filtrados por el estado Publicado
    params["servicio"] = servicio
    print(servicio)
    return render(request, "vista/index.html", params)


# Ingenieria Civil - servicios
def ing_civil(request):
    params = {}
    params ["nombre_sitio"] = "Portfolio Cabral Ingenieria"
    return render(request, "vista/ingenieria.html", params)
