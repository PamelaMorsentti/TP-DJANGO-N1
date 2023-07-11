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
from django.conf import settings
from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static # con esto permitimos que nuestras paginas estaticas se carguen en desarrollo
from ing import views

urlpatterns = [
    path("index", views.index, name="index"), # ruta a la funcion que levanta nuestra pagina
    
    # por cada pagina tenemos una nueva ruta
    # Ingenieria Civil
    path("ing", views.ing_civil, name="civil"),
    
]