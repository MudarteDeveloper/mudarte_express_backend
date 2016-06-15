from django.db import models


# Create your models here.
class TipoMueble(models.Model):
    """docstring for TipoMueble"""
    def __init__(self, *args, **kwargs):
        super(TipoMueble, self).__init__(*args, **kwargs)

    tipo_mueble = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.tipo_mueble

    class Meta:
        verbose_name = "Tipo mueble"
        verbose_name_plural = "Tipos de mueble"
        ordering = ['tipo_mueble']


class Mueble(models.Model):
    """docstring for Mueble"""
    def __init__(self, *args, **kwargs):
        super(Mueble, self).__init__(*args, **kwargs)

    tipo_mueble = models.ForeignKey(TipoMueble, on_delete=models.PROTECT)
    descripcion = models.CharField(max_length=100)

    def __str__(self):
        return self.descripcion

    class Meta:
        verbose_name = "Mueble"
        verbose_name_plural = "Muebles"


class EspecificacionMueble(models.Model):
    """docstring for EspecificacionMueble"""
    def __init__(self, *args, **kwargs):
        super(EspecificacionMueble, self).__init__(*args, **kwargs)

    mueble = models.ForeignKey(Mueble, on_delete=models.PROTECT)
    especificacion = models.CharField(max_length=100)
    ancho = models.DecimalField(max_digits=7, decimal_places=2)
    largo = models.DecimalField(max_digits=7, decimal_places=2)
    alto = models.DecimalField(max_digits=7, decimal_places=2)
    punto = models.IntegerField()

    def __str__(self):
        return self.especificacion

    class Meta:
        verbose_name = "Especificación del mueble"
        verbose_name_plural = "Especificaciones del mueble"
