from rest_framework import serializers
from django.contrib.auth.models import User
from cliente.models import Cliente
from mueble.models import Mueble, TipoMueble
from contenedor.models import Contenedor, DetalleContenedor
from bulto.models import Bulto
from material.models import Material
from cotizacionexpress.models import Cotizacion, CotizacionMueble, \
    CotizacionContenedor, CotizacionMaterial


# Serializers define the API representation.
class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'password',
                  'email', 'is_staff', 'last_login',
                  'is_superuser', 'first_name',
                  'last_name', 'is_active',
                  'date_joined')


class ClienteSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Cliente
        fields = ('id', 'nombre', 'direccion',
                  'telefono', 'email')


class TipoMuebleSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = TipoMueble
        fields = ('id', 'tipo_mueble')


class MuebleDescripcionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Mueble
        fields = ('descripcion',)


class MuebleSerializer(serializers.HyperlinkedModelSerializer):
    tipo_mueble = serializers.PrimaryKeyRelatedField(many=False,
                                                     queryset=TipoMueble.objects.all())

    class Meta:
        model = Mueble
        fields = ('id', 'descripcion', 'especificacion', 'ancho',
                  'largo', 'alto', 'punto', 'tipo_mueble')


class ContenedorSerializer(serializers.HyperlinkedModelSerializer):
    contenedor = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Contenedor.objects.all())

    class Meta:
        model = DetalleContenedor
        fields = ('id', 'contenedor', 'siglas', 'cantidad', 'punto')


class ContenedorDescripcionSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Contenedor
        fields = ('id', 'contenedor',
                  'propuesto1',
                  'propuesto2',
                  'propuesto3',
                  'propuesto4')


class BultoSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Bulto
        fields = ('id', 'ancho', 'largo', 'alto', 'punto')


class MaterialSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Material
        fields = ('id', 'descripcion', 'precio')


class CotizacionSerializer(serializers.HyperlinkedModelSerializer):
    cliente = serializers.PrimaryKeyRelatedField(many=False,
                                                 queryset=Cliente.objects.all())
    cotizador = serializers.PrimaryKeyRelatedField(many=False,
                                                   queryset=User.objects.all())

    class Meta:
        model = Cotizacion
        fields = ('id', 'numero_cotizacion', 'cliente',
                  'cotizador',  'fuente', 'cp_pv',
                  'tipo_cliente', 'cargo', 'forma_pago',
                  'fecha_de_carga', 'hora_de_carga',
                  'fecha_estimada_mudanza', 'hora_estimada_mudanza',
                  'fecha_de_cotizacion', 'hora_de_cotizacion',
                  'direccion_origen', 'barrio_provincia_origen',
                  'observacion_origen', 'direccion_destino',
                  'barrio_provincia_destino', 'observacion_destino',
                  'recorrido_km', 'precio_km',
                  'monto_km', 'tiempo_de_carga',
                  'tiempo_de_descarga', 'numero_camion',
                  'numero_ayudante', 'seguro', 'desarme_mueble',
                  'ambiente', 'rampa', 'mudanza', 'soga',
                  'embalaje', 'desembalaje', 'materiales',
                  'piano_cajafuerte', 'subtotal1', 'ajuste',
                  'porcentaje_ajuste', 'subtotal2', 'iva',
                  'porcentaje_iva', 'total_monto', 'observacion',
                  'total_cantidad', 'total_m3', 'porcentaje_margen',
                  'total_margen', 'estado')


class CotizacionMuebleSerializer(serializers.HyperlinkedModelSerializer):
    cotizacion = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Cotizacion.objects.all())

    class Meta:
        model = CotizacionMueble
        fields = ('id', 'cotizacion', 'mueble',
                  'especificacion', 'descripcion',
                  'ancho', 'largo', 'alto', 'cantidad', 'punto',
                  'total_punto', 'estado')


class CotizacionContenedorSerializer(serializers.HyperlinkedModelSerializer):
    cotizacion = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Cotizacion.objects.all())

    class Meta:
        model = CotizacionContenedor
        fields = ('id', 'cotizacion', 'descripcion',
                  'cantidad', 'punto', 'estado')


class CotizacionMaterialSerializer(serializers.HyperlinkedModelSerializer):
    cotizacion = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Cotizacion.objects.all())

    class Meta:
        model = CotizacionMaterial
        fields = ('id', 'cotizacion', 'material',
                  'cantidad', 'precio_unitario',
                  'total', 'estado')
