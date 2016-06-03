# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cotizacionexpress', '0005_cotizacionmueble_especificacion'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cotizacion',
            old_name='responsable',
            new_name='cotizador',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='empresa',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='fecha_de_aviso',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='fecha_de_cierre',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='fecha_real_mudanza',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='fecha_registro',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='gobierno',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='hora_de_aviso',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='hora_de_cierre',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='hora_real_mudanza',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='hora_registro',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='particular',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='quien_cotizo',
        ),
        migrations.RemoveField(
            model_name='cotizacion',
            name='quien_llamo',
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='tipo_cliente',
            field=models.CharField(blank=True, max_length=20),
        ),
        migrations.AlterField(
            model_name='cotizacion',
            name='fecha_de_carga',
            field=models.DateField(default='2016-01-01', auto_now_add=True),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='cotizacion',
            name='hora_de_carga',
            field=models.TimeField(default='01:00:00', auto_now_add=True),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='cotizacion',
            name='numero_camion',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]
