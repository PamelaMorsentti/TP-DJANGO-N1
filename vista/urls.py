"""
URL configuration for portfolio project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.urls import path
from vista import views

""" urls secundario """

urlpatterns = [
    path("index", views.index, name="index"),
    
    # por cada pagina tenemos una nueva ruta
    path("producto", views.producto, name="producto"),
    
    # en views debe existir una fundion llamada pruebafuncion va a ser la que se encargue de traer la pagina, me redirija
    path("mi_prueba_ruta", views.pruebafuncion, name="ruta_prueba"),

]
