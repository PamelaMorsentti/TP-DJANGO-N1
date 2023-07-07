from django.contrib import admin
from vista.models import Categoria
from vista.models import Producto

def publicar(modeladmin, request, queryset):
    queryset.update(estado='Publicado')


class ProductoAdmin(admin.ModelAdmin):
    fields =['categoria','fecha_publicacion', 'producto', 'imagen']
    #list_display = ['producto', 'fecha_publicacion', 'imagen', 'tipo_de_producto',]
    ordering = ['-fecha_publicacion']
    list_filter = ('producto', 'fecha_publicacion',)
    actions = [publicar]
    
# Register your models here.
admin.site.register(Categoria)
#admin.site.register(Producto)
admin.site.register(Producto, ProductoAdmin)
