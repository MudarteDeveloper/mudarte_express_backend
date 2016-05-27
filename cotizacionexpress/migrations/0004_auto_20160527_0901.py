# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('cotizacionexpress', '0003_auto_20160523_1149'),
    ]

    operations = [
        migrations.CreateModel(
            name='CotizacionMaterial',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, verbose_name='ID', serialize=False)),
                ('material', models.CharField(max_length=100)),
                ('cantidad', models.IntegerField()),
                ('precio_unitario', models.DecimalField(max_digits=9, decimal_places=2)),
                ('total', models.DecimalField(max_digits=9, decimal_places=2)),
                ('estado', models.CharField(choices=[('activo', 'Activo'), ('inactivo', 'Inactivo')], max_length=20)),
            ],
            options={
                'verbose_name_plural': 'Materiales de la cotización',
                'ordering': ['material'],
                'verbose_name': 'material de la cotización',
            },
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='ajuste',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='ambiente',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='barrio_provincia_destino',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='barrio_provincia_origen',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='cargo',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='cp_pv',
            field=models.CharField(blank=True, max_length=20),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='desarme_mueble',
            field=models.BooleanField(default=None),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='desembalaje',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='direccion_destino',
            field=models.TextField(blank=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='direccion_origen',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='embalaje',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='empresa',
            field=models.BooleanField(default=None),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='fecha_de_aviso',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='fecha_de_carga',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='fecha_de_cierre',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='fecha_estimada_mudanza',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='fecha_real_mudanza',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='fecha_registro',
            field=models.DateField(default='2016-01-01', auto_now_add=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='forma_pago',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='fuente',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='gobierno',
            field=models.BooleanField(default=None),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='hora_de_aviso',
            field=models.TimeField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='hora_de_carga',
            field=models.TimeField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='hora_de_cierre',
            field=models.TimeField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='hora_de_cotizacion',
            field=models.TimeField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='hora_estimada_mudanza',
            field=models.TimeField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='hora_real_mudanza',
            field=models.TimeField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='hora_registro',
            field=models.TimeField(default='00:00:00', auto_now_add=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='iva',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='materiales',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='monto_km',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='mudanza',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='numero_ayudante',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='numero_camion',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='observacion',
            field=models.TextField(blank=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='observacion_destino',
            field=models.TextField(blank=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='observacion_origen',
            field=models.TextField(blank=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='particular',
            field=models.BooleanField(default=None),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='piano_cajafuerte',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='porcentaje_margen',
            field=models.DecimalField(blank=True, default=0.0, max_digits=7, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='precio_km',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='quien_cotizo',
            field=models.ForeignKey(blank=True, related_name='quien_cotizo', to=settings.AUTH_USER_MODEL, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='quien_llamo',
            field=models.ForeignKey(blank=True, related_name='quien_llamo', to=settings.AUTH_USER_MODEL, null=True),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='rampa',
            field=models.BooleanField(default=None),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='recorrido_km',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='seguro',
            field=models.BooleanField(default=None),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='soga',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='tiempo_de_carga',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='tiempo_de_descarga',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='total_margen',
            field=models.DecimalField(blank=True, default=0.0, max_digits=7, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='total_monto',
            field=models.DecimalField(blank=True, default=0.0, max_digits=9, decimal_places=2),
        ),
        migrations.AlterField(
            model_name='cotizacion',
            name='fecha_de_cotizacion',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='cotizacion',
            name='responsable',
            field=models.ForeignKey(blank=True, related_name='cotizador', to=settings.AUTH_USER_MODEL, null=True),
        ),
        migrations.AddField(
            model_name='cotizacionmaterial',
            name='cotizacion',
            field=models.ForeignKey(to='cotizacionexpress.Cotizacion'),
        ),
    ]
