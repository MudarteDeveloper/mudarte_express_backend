from django.db import models
from django.contrib.auth.models import User
from cliente.models import Cliente
from mueble.models import Mueble, TipoMueble, EspecificacionMueble
from contenedor.models import Contenedor
from material.models import Material


ESTADO_CHOICES = (
    ('activo', 'Activo'),
    ('inactivo', 'Inactivo'),
    )

CP_PV_CHOICES = (
    ('CP', 'CP'),
    ('PV', 'PV')
    )


FUENTE_CHOICES = (
    ('Internet Google', 'Internet Google'),
    ('Internet Otro buscador', 'Internet Otro buscador'),
    ('Internet Banner', 'Internet Banner'),
    ('Cartel Via Publica', 'Cartel Via Publica'),
    ('Recomendado Cliente', 'Recomendado Cliente'),
    ('Cliente', 'Cliente'),
    ('Volante diario/revista', 'Volante diario/revista'),
    ('Volante via publica', 'Volante via publica'),
    ('Volante en casa', 'Volante en casa'),
    ('Volante en evento', 'Volante en evento'),
    ('Publ. Diario/revista', 'Publ. Diario/revista'),
    ('Public. Email', 'Public. Email'),
    ('Public. Via Publica', 'Public. Via Publica'),
    ('Publicidad TV', 'Publicidad TV'),
    ('Pulicidad Radio', 'Pulicidad Radio'),
    ('Publicidad Cine', 'Publicidad Cine'),
    ('Camion Mudarte', 'Camion Mudarte'),
    ('Telemercadeo', 'Telemercadeo'),
    ('Deposito Belgrano', 'Deposito Belgrano'),
    ('Inmobiliaria', 'Inmobiliaria'),
    ('Tarjeta descuento', 'Tarjeta descuento'),
    ('Otros', 'Otros'),
    ('My Home Planners', 'My Home Planners')
    )


FORMA_PAGO = (
    ('Efectivo'),
    ('Transferencia'),
    ('Cheque')
    )


# Create your models here.
class Cotizacion(models.Model):
    """docstring for Cotización"""
    def __init__(self, *args, **kwargs):
        super(Cotizacion, self).__init__(*args, **kwargs)

    numero_cotizacion = models.CharField(max_length=100, blank=True)
    cliente = models.ForeignKey(Cliente, null=True, blank=True)
    cotizador = models.ForeignKey(User, null=True, blank=True, related_name="cotizador")
    fuente = models.CharField(max_length=100, blank=True)
    cp_pv = models.CharField(max_length=250, blank=True)
    tipo_cliente = models.CharField(max_length=20, blank=True)
    cargo = models.CharField(max_length=100, blank=True)
    forma_pago = models.CharField(max_length=100, blank=True)
    fecha_de_carga = models.DateField(auto_now_add=True, blank=True)
    hora_de_carga = models.TimeField(auto_now_add=True, blank=True)
    fecha_estimada_mudanza = models.DateField(null=True, blank=True)
    hora_estimada_mudanza = models.TimeField(null=True, blank=True)
    fecha_de_cotizacion = models.DateField(null=True, blank=True)
    hora_de_cotizacion = models.TimeField(null=True, blank=True)
    direccion_origen = models.TextField(null=True, blank=True)
    barrio_provincia_origen = models.CharField(max_length=200, blank=True)
    observacion_origen = models.TextField(blank=True)
    direccion_destino = models.TextField(blank=True)
    barrio_provincia_destino = models.CharField(max_length=200, blank=True)
    observacion_destino = models.TextField(blank=True)
    recorrido_km = models.IntegerField(blank=True, default=0)
    precio_km = models.DecimalField(max_digits=9, decimal_places=2,
                                    blank=True, default=0.00)
    monto_km = models.DecimalField(max_digits=9, decimal_places=2,
                                   blank=True, default=0.00)
    tiempo_de_carga = models.IntegerField(blank=True, default=0)
    tiempo_de_descarga = models.IntegerField(blank=True, default=0)
    numero_camion = models.CharField(max_length=100, blank=True)
    numero_ayudante = models.IntegerField(blank=True, default=0)
    seguro = models.BooleanField(default=None)
    desarme_mueble = models.BooleanField(default=None)
    ambiente = models.IntegerField(blank=True, default=0)
    rampa = models.BooleanField(default=None)
    mudanza = models.DecimalField(max_digits=9, decimal_places=2,
                                  blank=True, default=0.00)
    soga = models.DecimalField(max_digits=9, decimal_places=2,
                               blank=True, default=0.00)
    embalaje = models.DecimalField(max_digits=9, decimal_places=2,
                                   blank=True, default=0.00)
    desembalaje = models.DecimalField(max_digits=9, decimal_places=2,
                                      blank=True, default=0.00)
    materiales = models.DecimalField(max_digits=9, decimal_places=2,
                                     blank=True, default=0.00)
    piano_cajafuerte = models.DecimalField(max_digits=9, decimal_places=2,
                                           blank=True, default=0.00)
    subtotal1 = models.DecimalField(max_digits=7, decimal_places=2,
                                    blank=True, default=0.00)
    ajuste = models.DecimalField(max_digits=9, decimal_places=2,
                                 blank=True, default=0.00)
    porcentaje_ajuste = models.DecimalField(max_digits=7, decimal_places=2,
                                            blank=True, default=0.00)
    subtotal2 = models.DecimalField(max_digits=7, decimal_places=2,
                                    blank=True, default=0.00)
    iva = models.DecimalField(max_digits=9, decimal_places=2,
                              blank=True, default=0.00)
    porcentaje_iva = models.DecimalField(max_digits=7, decimal_places=2,
                                         blank=True, default=0.00)
    total_monto = models.DecimalField(max_digits=9, decimal_places=2,
                                      blank=True, default=0.00)
    observacion = models.TextField(blank=True)
    total_cantidad = models.IntegerField(blank=True, default=0)
    total_m3 = models.DecimalField(max_digits=7, decimal_places=2,
                                   blank=True, default=0.00)
    porcentaje_margen = models.DecimalField(max_digits=7, decimal_places=2,
                                            blank=True, default=0.00)
    total_margen = models.DecimalField(max_digits=7, decimal_places=2,
                                       blank=True, default=0.00)
    estado = models.CharField(max_length=20, choices=ESTADO_CHOICES)

    def __str__(self):
        return str(self.pk)

    class Meta:
        verbose_name = "Cotización"
        verbose_name_plural = "Cotizaciones"


class CotizacionMueble(models.Model):
    """docstring for CotizacionMueble"""
    def __init__(self, *args, **kwargs):
        super(CotizacionMueble, self).__init__(*args, **kwargs)

    cotizacion = models.ForeignKey(Cotizacion)
    muebleid = models.ForeignKey(Mueble, null=True, blank=True)
    tipo_muebleid = models.ForeignKey(TipoMueble, null=True, blank=True)
    especificacionid = models.ForeignKey(EspecificacionMueble, null=True, blank=True)
    mueble = models.CharField(max_length=100)
    especificacion = models.CharField(max_length=100, blank=True)
    descripcion = models.TextField(blank=True)
    ancho = models.DecimalField(max_digits=7, decimal_places=2)
    largo = models.DecimalField(max_digits=7, decimal_places=2)
    alto = models.DecimalField(max_digits=7, decimal_places=2)
    cantidad = models.IntegerField()
    punto = models.IntegerField()
    total_punto = models.IntegerField()
    estado = models.CharField(max_length=20, choices=ESTADO_CHOICES)

    def __str__(self):
        return str(self.mueble)

    class Meta:
        verbose_name = "mueble de la cotización"
        verbose_name_plural = "Muebles de la cotización"
        ordering = ["mueble"]


class CotizacionContenedor(models.Model):
    """docstring for Cotización"""
    def __init__(self, *args, **kwargs):
        super(CotizacionContenedor, self).__init__(*args, **kwargs)

    cotizacion = models.ForeignKey(Cotizacion)
    contenedor = models.ForeignKey(Contenedor, on_delete=models.PROTECT)
    descripcion = models.CharField(max_length=100)
    cantidad = models.IntegerField()
    punto = models.IntegerField()
    estado = models.CharField(max_length=20, choices=ESTADO_CHOICES)

    def __str__(self):
        return str(self.descripcion)

    class Meta:
        verbose_name = "Contenedor de la cotización"
        verbose_name_plural = "Contenedores de la cotización"
        ordering = ["descripcion"]


class CotizacionMaterial(models.Model):
    """docstring for CotizacionMaterial"""
    def __init__(self, *args, **kwargs):
        super(CotizacionMaterial, self).__init__(*args, **kwargs)

    cotizacion = models.ForeignKey(Cotizacion)
    materialid = models.ForeignKey(Material, on_delete=models.PROTECT)
    material = models.CharField(max_length=100)
    cantidad = models.IntegerField()
    precio_unitario = models.DecimalField(max_digits=9, decimal_places=2)
    total = models.DecimalField(max_digits=9, decimal_places=2)
    estado = models.CharField(max_length=20, choices=ESTADO_CHOICES)

    def __str__(self):
        return str(self.material)

    class Meta:
        verbose_name = "material de la cotización"
        verbose_name_plural = "Materiales de la cotización"
        ordering = ["material"]
