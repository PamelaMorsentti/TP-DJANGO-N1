from django.db import models
from django.utils.html import format_html

# Create your models here.
class CategoriaServicio(models.Model):
    nombre = models.CharField(max_length=100, db_index=True)
    slug = models.SlugField(max_length=100, db_index=True)
    
    

    def __str__(self):
        return '%s' % self.nombre

class Servicio(models.Model):
    # vamos a agregar una tupla para el listado de opciones para el estado en que se encuentre el servicio
    Estudio = "Estudio"
    Anteproyecto = "Anteproyecto"
    Proyecto = "Proyecto"
    Construccion = "Construccion"
    Finalizado = "Finalizado"
    Entregado = "Entregado"
    Pendiente = "Pendiente"
    ESTADO_SERVICIO = (
        (Estudio, "Estudio"),
        (Anteproyecto, "Anteproyecto"),
        (Proyecto, "Proyecto"),
        (Construccion, "Construccion"),
        (Finalizado, "Finalizado"),
        (Entregado, "Entregado"),
        (Pendiente, "Pendiente"),        
    )
    servicio = models.CharField(max_length=200, db_index=True, blank=True, null=True)
    estado = models.CharField(max_length=30, choices=ESTADO_SERVICIO, default="Estudio")
    fecha_inicio=models.DateTimeField("fecha de inicio")
    imagen = models.ImageField(upload_to="servicio/%Y/%m/%d", blank=True, null=True)
    descripcion = models.CharField(max_length=255, db_index=True)
    #categoria = models.ManyToManyField(CategoriaServicio)
    categoria = models.ForeignKey(CategoriaServicio, blank=False, null=True, on_delete=models.CASCADE)    
        
    def estado_servicio(self): # metodo de instancia que puede trabajar con los atributos de instancia, aplica la logica encerrada en la funcion
        if self.estado== "Pendiente":
            return format_html("<span style='color: #f00;'>{}</span>", self.estado,)
        elif self.estado == "Estudio":
            return format_html("<span style='background-color: #f0f; padding:7px;'>{}</span>", self.estado,)
        elif self.estado == "Finalizado":
            return format_html("<span style='color: #099;'>{}</span>", self.estado,)
            
    def __str__(self,):
        return self.servicio + " --> " + str(self.estado)    
