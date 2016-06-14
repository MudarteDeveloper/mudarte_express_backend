# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contenedor', '0001_initial'),
        ('material', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='material',
            name='contenedor',
            field=models.ForeignKey(to='contenedor.Contenedor', blank=True, null=True),
        ),
    ]
