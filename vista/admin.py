from django.contrib import admin
from vista.models import Categoria
from vista.models import Producto

class ProductoAdmin(admin.ModelAdmin):
    fields =['categoria','fecha_publicacion', 'producto', 'imagen']
    
admin.site.register(Producto, ProductoAdmin)
    
# Register your models here.
admin.site.register(Categoria)
#admin.site.register(Producto)
