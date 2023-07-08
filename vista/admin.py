from django.contrib import admin
from vista.models import Categoria
from vista.models import Producto

def publicar(modeladmin, request, queryset):
    queryset.update(estado='Publicado')

class ProductoInLine(admin.TabularInline):
    model=Producto
    extra=0
    
class CategoriaAdmin(admin.ModelAdmin):
    inlines=[ProductoInLine]
    
    @admin.register(Producto) # asocia la clase ProductoAdmin a la clase Producto del modelo
    class ProductoAdmin(admin.ModelAdmin):
        #fields =["categoria", "fecha_publicacion", "producto", "imagen"]
        
        fieldsets = [
            ("Relacion", {"fields":["categoria"]}),
            ("Datos generales", {"fields":['fecha_publicacion', 'producto', 'estado', 'imagen']},),]
        list_display = ['producto', 'fecha_publicacion', 'tipo_de_producto', 'imagen', 'upper_case_name',]
        ordering = ["-fecha_publicacion"]
        list_filter = ("producto", "fecha_publicacion", "estado",)
        search_fields = ("produto", "fecha_publicacion",)
        list_display_links = ("producto", "fecha_publicacion",)
        
    @admin.display(description="name")
    def upper_case_name(self, obj): # por algun motivo no lo toma desde admin, pero si desde models
        return("%s %s" %(obj.producto, obj.estado)).upper()

    
# Register your models here.
#admin.site.register(Producto, ProductoAdmin)
admin.site.register(Categoria, CategoriaAdmin)

"""
class ProductoAdmin(admin.ModelAdmin):
    fields =['categoria','fecha_publicacion', 'producto', 'imagen']
    #list_display = ['producto', 'fecha_publicacion', 'tipo_de_producto, 'imagen',]
    ordering = ['-fecha_publicacion']
    list_filter = ('producto', 'fecha_publicacion',)
    actions = [publicar]

# Register your models here.
admin.site.register(Categoria)
admin.site.register(Producto, ProductoAdmin)
"""