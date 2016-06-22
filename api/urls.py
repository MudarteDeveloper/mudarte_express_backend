"""
Docstring pendiente para este documento
"""


from django.conf.urls import patterns, url, include
from api.views import UserViewSet, ClienteViewSet, \
    MuebleViewSet, ContenedorViewSet, CotizacionViewSet, \
    CotizacionMuebleViewSet, CotizacionContenedorViewSet, \
    ContenedorDescripcionViewSet, BultoViewSet, TipoMuebleViewSet, \
    MuebleDescripcionViewSet, MaterialViewSet, CotizacionMaterialViewSet, \
    AuthView


from rest_framework import routers


# Routers provide an easy way of automatically determining the URL conf.
router = routers.DefaultRouter()
router.register(r'v1/user', UserViewSet)
router.register(r'v1/cliente', ClienteViewSet)
router.register(r'v1/tipo_mueble', TipoMuebleViewSet)
router.register(r'v1/muebledescripcion', MuebleDescripcionViewSet)
router.register(r'v1/mueble', MuebleViewSet)
router.register(r'v1/contenedor', ContenedorViewSet)
router.register(r'v1/contenedordescripcion', ContenedorDescripcionViewSet)
router.register(r'v1/bulto', BultoViewSet)
router.register(r'v1/material', MaterialViewSet)
router.register(r'v1/cotizacion', CotizacionViewSet)
router.register(r'v1/mueblecotizacion', CotizacionMuebleViewSet)
router.register(r'v1/contenedorcotizacion', CotizacionContenedorViewSet)
router.register(r'v1/materialcotizacion', CotizacionMaterialViewSet)

urlpatterns = patterns('',
                       url(r'^', include(router.urls)),
                       url(r'^auth/$',
                           AuthView,
                           name='authenticate')
                       )
