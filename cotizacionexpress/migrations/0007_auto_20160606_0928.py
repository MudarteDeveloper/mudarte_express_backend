# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cotizacionexpress', '0006_auto_20160603_1210'),
    ]

    operations = [
        migrations.AddField(
            model_name='cotizacion',
            name='porcentaje_ajuste',
            field=models.DecimalField(blank=True, default=0.0, max_digits=7, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='porcentaje_iva',
            field=models.DecimalField(blank=True, default=0.0, max_digits=7, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='subtotal1',
            field=models.DecimalField(blank=True, default=0.0, max_digits=7, decimal_places=2),
        ),
        migrations.AddField(
            model_name='cotizacion',
            name='subtotal2',
            field=models.DecimalField(blank=True, default=0.0, max_digits=7, decimal_places=2),
        ),
        migrations.AlterField(
            model_name='cotizacion',
            name='cp_pv',
            field=models.CharField(blank=True, max_length=250),
        ),
    ]
