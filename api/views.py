from django.contrib.auth.models import User
from rest_framework import viewsets
from cliente.models import Cliente
from mueble.models import Mueble, TipoMueble
from contenedor.models import Contenedor
from cotizacionexpress.models import Cotizacion, CotizacionMueble, \
    CotizacionContenedor, CotizacionMaterial
from bulto.models import Bulto
from material.models import Material
from api.serializers import UserSerializer, ClienteSerializer, \
    MuebleSerializer, ContenedorSerializer, CotizacionSerializer, \
    CotizacionMuebleSerializer, CotizacionContenedorSerializer, \
    ContenedorDescripcionSerializer, BultoSerializer, \
    TipoMuebleSerializer, MuebleDescripcionSerializer, \
    MaterialSerializer, CotizacionMaterialSerializer


# ViewSets define the view behavior.
class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer

    def get_queryset(self):
        query = self.request.query_params
        queryset = self.queryset
        if 'cotizador' in query.keys():
            queryset = queryset.filter(groups__name=query.get('cotizador'))
        if 'telefonista' in query.keys():
            queryset = queryset.filter(groups__name=query.get('telefonista'))

        return queryset


class ClienteViewSet(viewsets.ModelViewSet):
    queryset = Cliente.objects.all()
    serializer_class = ClienteSerializer


class TipoMuebleViewSet(viewsets.ModelViewSet):
    queryset = TipoMueble.objects.all()
    serializer_class = TipoMuebleSerializer


class MuebleDescripcionViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Mueble.objects.values('descripcion').distinct()
    serializer_class = MuebleDescripcionSerializer


class MuebleViewSet(viewsets.ModelViewSet):
    queryset = Mueble.objects.all()
    serializer_class = MuebleSerializer

    def get_queryset(self):
        query = self.request.query_params
        queryset = self.queryset
        if 'descripcion' in query.keys():
            queryset = queryset.filter(descripcion=query.get('descripcion'))

        return queryset


class ContenedorViewSet(viewsets.ModelViewSet):
    queryset = Contenedor.objects.all()
    serializer_class = ContenedorSerializer

    def get_queryset(self):
        query = self.request.query_params
        queryset = self.queryset
        if 'contenedor' in query.keys():
            queryset = queryset.filter(contenedor=query.get('contenedor')).order_by('-unidad')

        return queryset


class ContenedorDescripcionViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Contenedor.objects.values('contenedor').distinct()
    serializer_class = ContenedorDescripcionSerializer


class BultoViewSet(viewsets.ModelViewSet):
    queryset = Bulto.objects.all()
    serializer_class = BultoSerializer


class MaterialViewSet(viewsets.ModelViewSet):
    queryset = Material.objects.all()
    serializer_class = MaterialSerializer


class CotizacionViewSet(viewsets.ModelViewSet):
    queryset = Cotizacion.objects.all()
    serializer_class = CotizacionSerializer


class CotizacionMuebleViewSet(viewsets.ModelViewSet):
    queryset = CotizacionMueble.objects.all()
    serializer_class = CotizacionMuebleSerializer
    lookup_field = 'id'

    def get_queryset(self):
        query = self.request.query_params
        queryset = self.queryset
        if 'cotizacion' in query.keys():
            queryset = queryset.filter(cotizacion=Cotizacion.objects.get(id=query.get('cotizacion')))

        return queryset


class CotizacionContenedorViewSet(viewsets.ModelViewSet):
    queryset = CotizacionContenedor.objects.all()
    serializer_class = CotizacionContenedorSerializer
    lookup_field = 'id'

    def get_queryset(self):
        query = self.request.query_params
        queryset = self.queryset
        if 'cotizacion' in query.keys():
            queryset = queryset.filter(cotizacion=Cotizacion.objects.get(id=query.get('cotizacion')))

        return queryset


class CotizacionMaterialViewSet(viewsets.ModelViewSet):
    queryset = CotizacionMaterial.objects.all()
    serializer_class = CotizacionMaterialSerializer
    lookup_field = 'id'

    def get_queryset(self):
        query = self.request.query_params
        queryset = self.queryset
        if 'cotizacion' in query.keys():
            queryset = queryset.filter(cotizacion=Cotizacion.objects.get(id=query.get('cotizacion')))

        return queryset
