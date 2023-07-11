from django.contrib import admin
from . import models
from ing.models import Servicio
from ing.models import CategoriaServicio

# Register your models here.
class ServicioInLine(admin.TabularInline):
    model=Servicio
    extra=0
    
class CategoriaAdmin(admin.ModelAdmin):
    inlines=[ServicioInLine]

@admin.register(models.Servicio) # asocia la clase ServiciooAdmin a la clase Servicio del modelo
class ServicioAdmin(admin.ModelAdmin):
    fieldsets = [
        ("Relacion", {"fields":["categoria"]}),
        ("Datos generales", {"fields":['fecha_inicio', 'servicio', 'estado', 'imagen']},),]
    list_display = ['servicio', 'fecha_inicio', 'imagen',]
    ordering = ["-fecha_inicio"]
    list_filter = ("servicio", "fecha_inicio", "estado",)
    search_fields = ("servicio", "fecha_inicio",)
    list_display_links = ("servicio", "fecha_inicio",)
   
@admin.display(description="Servicio")
def upper_case_name(self, obj): 
    return("%s %s" %(obj.servicio, obj.estado)).upper()
 
admin.site.register(CategoriaServicio, CategoriaAdmin)
 