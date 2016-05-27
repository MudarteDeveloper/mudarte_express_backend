# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cotizacionexpress', '0004_auto_20160527_0901'),
    ]

    operations = [
        migrations.AddField(
            model_name='cotizacionmueble',
            name='especificacion',
            field=models.CharField(max_length=100, default=''),
            preserve_default=False,
        ),
    ]
