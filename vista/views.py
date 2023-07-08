from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
"""
def index(request):
    return HttpResponse("Hola Mundo!")
    """

def index(request):
    params = {}
    params ["nombre_sitio"] = "Portfolio Cabral Ingenieria"
    return render(request, "vista/index.html", params)

# por cada nueva pagina debe haber alguien que administre lo que va a haber en esa pagina
def producto(request):
    params ={}
    params ["nombre_sitio"] = "Portfolio Cabral Ingenieria"
    return render(request, "vista/producto.html", params)