from django.db import models


# Create your models here.
class Contenedor(models.Model):
    """docstring for Contenedor"""
    def __init__(self, *args, **kwargs):
        super(Contenedor, self).__init__(*args, **kwargs)

    contenedor = models.CharField(max_length=100, unique=True)
    propuesto1 = models.IntegerField()
    propuesto2 = models.IntegerField()
    propuesto3 = models.IntegerField()
    propuesto4 = models.IntegerField()

    def __str__(self):
        return self.contenedor

    class Meta:
        verbose_name = "Contenedor"
        verbose_name_plural = "Contenedores"
        ordering = ["contenedor"]


class DetalleContenedor(models.Model):
    """docstring for DetalleContenedor"""
    def __init__(self, *args, **kwargs):
        super(DetalleContenedor, self).__init__(*args, **kwargs)

    contenedor = models.ForeignKey(Contenedor)
    siglas = models.CharField(max_length=10)
    cantidad = models.IntegerField()
    punto = models.IntegerField()

    def __str__(self):
        return self.contenedor

    class Meta:
        verbose_name = "Detalle contenedor"
        verbose_name_plural = "Detalle contenedores"
