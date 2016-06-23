from rest_framework import serializers
from django.contrib.auth.models import User
from cliente.models import Cliente
from mueble.models import Mueble, TipoMueble, EspecificacionMueble
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


class UserSerializer2(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'first_name', 'last_name')


class ClienteSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Cliente
        fields = ('id', 'nombre', 'direccion',
                  'telefono', 'email')


class TipoMuebleSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = TipoMueble
        fields = ('id', 'tipo_mueble')


class MuebleSerializer(serializers.HyperlinkedModelSerializer):
    mueble = serializers.PrimaryKeyRelatedField(many=False,
                                                queryset=Mueble.objects.all())

    class Meta:
        model = EspecificacionMueble
        fields = ('id', 'especificacion', 'ancho',
                  'largo', 'alto', 'punto', 'mueble')


class MuebleDescripcionSerializer(serializers.HyperlinkedModelSerializer):
    tipo_mueble = serializers.PrimaryKeyRelatedField(many=False,
                                                     queryset=TipoMueble.objects.all())
    especificacionmuebles = MuebleSerializer(many=True,
                                             read_only=True,
                                             source='especificacionmueble_set')

    class Meta:
        model = Mueble
        fields = ('id', 'descripcion', 'tipo_mueble', 'especificacionmuebles')


class ContenedorSerializer(serializers.HyperlinkedModelSerializer):
    contenedor = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Contenedor.objects.all())

    class Meta:
        model = DetalleContenedor
        fields = ('id', 'contenedor', 'siglas', 'cantidad', 'punto')


class ContenedorDescripcionSerializer(serializers.HyperlinkedModelSerializer):
    detallecontenedores = ContenedorSerializer(many=True,
                                               read_only=True,
                                               source='detallecontenedor_set')

    class Meta:
        model = Contenedor
        fields = ('id', 'contenedor',
                  'propuesto1',
                  'propuesto2',
                  'propuesto3',
                  'propuesto4', 'detallecontenedores')


class BultoSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Bulto
        fields = ('id', 'ancho', 'largo', 'alto', 'punto')


class MaterialSerializer(serializers.HyperlinkedModelSerializer):
    contenedor = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Contenedor.objects.all())

    class Meta:
        model = Material
        fields = ('id', 'descripcion', 'precio', 'contenedor')


class CotizacionMuebleSerializer(serializers.HyperlinkedModelSerializer):
    cotizacion = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Cotizacion.objects.all())
    muebleid = serializers.PrimaryKeyRelatedField(many=False,
                                                  allow_null=True,
                                                  queryset=Mueble.objects.all())
    tipo_muebleid = serializers.PrimaryKeyRelatedField(many=False,
                                                       allow_null=True,
                                                       queryset=TipoMueble.objects.all())
    especificacionid = serializers.PrimaryKeyRelatedField(many=False,
                                                          allow_null=True,
                                                          queryset=EspecificacionMueble.objects.all())

    class Meta:
        model = CotizacionMueble
        fields = ('id', 'cotizacion', 'mueble',
                  'especificacion', 'descripcion',
                  'ancho', 'largo', 'alto', 'cantidad', 'punto',
                  'total_punto', 'estado', 'muebleid',
                  'tipo_muebleid', 'especificacionid')


class CotizacionContenedorSerializer(serializers.HyperlinkedModelSerializer):
    cotizacion = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Cotizacion.objects.all())
    contenedor = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Contenedor.objects.all())

    class Meta:
        model = CotizacionContenedor
        fields = ('id', 'cotizacion', 'descripcion',
                  'cantidad', 'punto', 'estado', 'contenedor')


class CotizacionMaterialSerializer(serializers.HyperlinkedModelSerializer):
    cotizacion = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Cotizacion.objects.all())
    materialid = serializers.PrimaryKeyRelatedField(many=False,
                                                    queryset=Material.objects.all())

    class Meta:
        model = CotizacionMaterial
        fields = ('id', 'cotizacion', 'material',
                  'cantidad', 'precio_unitario',
                  'total', 'estado', 'materialid')


class CotizacionSerializer(serializers.HyperlinkedModelSerializer):
    cliente = ClienteSerializer(read_only=True)
    clienteId = serializers.PrimaryKeyRelatedField(write_only=True,
                                                   queryset=Cliente.objects.all(),
                                                   source='cliente')
    cotizador = UserSerializer2(read_only=True)
    cotizadorId = serializers.PrimaryKeyRelatedField(write_only=True,
                                                     queryset=User.objects.all(),
                                                     source='cotizador')
    cotizacionmuebles = CotizacionMuebleSerializer(many=True,
                                                   read_only=True,
                                                   source='cotizacionmueble_set')
    cotizacioncontenedores = CotizacionContenedorSerializer(many=True,
                                                            read_only=True,
                                                            source='cotizacioncontenedor_set')
    cotizacionmateriales = CotizacionMaterialSerializer(many=True,
                                                        read_only=True,
                                                        source='cotizacionmaterial_set')

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
                  'total_margen', 'estado', 'clienteId', 'cotizadorId',
                  'cotizacionmuebles', 'cotizacioncontenedores',
                  'cotizacionmateriales')
