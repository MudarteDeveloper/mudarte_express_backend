from django.db import models


# Create your models here.
class Material(models.Model):
    """docstring for Material"""
    def __init__(self, *args, **kwargs):
        super(Material, self).__init__(*args, **kwargs)
    descripcion = models.CharField(max_length=100)
    precio = models.DecimalField(max_digits=9, decimal_places=2)

    def __str__(self):
        return self.descripcion

    class Meta:
        verbose_name = "Material"
        verbose_name_plural = "Materiales"
