# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('contenedor', '0001_initial'),
        ('mueble', '0006_auto_20160615_1544'),
        ('material', '0002_material_contenedor'),
        ('cotizacionexpress', '0008_auto_20160615_1315'),
    ]

    operations = [
        migrations.AddField(
            model_name='cotizacioncontenedor',
            name='contenedor',
            field=models.ForeignKey(to='contenedor.Contenedor', default=1, on_delete=django.db.models.deletion.PROTECT),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='cotizacionmaterial',
            name='materialid',
            field=models.ForeignKey(to='material.Material', default=1, on_delete=django.db.models.deletion.PROTECT),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='cotizacionmueble',
            name='especificacionid',
            field=models.ForeignKey(to='mueble.EspecificacionMueble', null=True, blank=True),
        ),
        migrations.AddField(
            model_name='cotizacionmueble',
            name='muebleid',
            field=models.ForeignKey(to='mueble.Mueble', null=True, blank=True),
        ),
        migrations.AddField(
            model_name='cotizacionmueble',
            name='tipo_muebleid',
            field=models.ForeignKey(to='mueble.TipoMueble', null=True, blank=True),
        ),
    ]
