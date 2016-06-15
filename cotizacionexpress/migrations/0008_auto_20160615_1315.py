# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cotizacionexpress', '0007_auto_20160606_0928'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cotizacionmueble',
            name='especificacion',
            field=models.CharField(max_length=100, blank=True),
        ),
    ]
