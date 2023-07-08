from django.contrib import admin
from vista.models import Categoria
from vista.models import Producto

def publicar(modeladmin, request, queryset):
    queryset.update(estado='Publicado')
"""
class ProductoInLine(admin.TabularInline):
    model=Producto
    extra=0
class CategoriaAdmin(admin.ModelAdmin):
    inlines=[ProductoInLine]
    @admin.register(Producto)
    class ProductoAdmin(admin.ModelAdmin):
        fields =["categoria", "fecha_publicacion", "producto", "imagen"]
        
        fieldsets = [
            ("Relacion", {"fields":["categoria"]}),
            ("Datos generales", {"fields":["fecha_publicacion", "producto", "estado", "imagen"]},),
        ]
        list_display=["producto", "fecha_publicacion","tipo_de_producto", "image", "upper_case_name"]
        ordering=["-fecha_publicacion"]
        list_filter=("producto", "fecha_publicacion", "estado")
        search_fields=("produto", "fecha_publicacion",)
        
    @admin.display(description="name")
    def upper_case_name(self, obj):
        return("%s %s" %(obj.producto, obj.estado)).upper()

#admin.site.register(Producto, ProductoAdmin)
admin.site.register(Categoria, CategoriaAdmin)
"""
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
