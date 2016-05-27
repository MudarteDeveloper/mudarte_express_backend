# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mueble', '0003_mueble_tipo_mueble'),
    ]

    operations = [
        migrations.AddField(
            model_name='mueble',
            name='especificacion',
            field=models.CharField(default=1, max_length=100),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='mueble',
            name='descripcion',
            field=models.CharField(max_length=100),
        ),
    ]
