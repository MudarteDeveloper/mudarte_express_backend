# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mueble', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='TipoMueble',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', auto_created=True, primary_key=True)),
                ('tipo_mueble', models.CharField(unique=True, max_length=100)),
            ],
            options={
                'ordering': ['tipo_mueble'],
                'verbose_name': 'Tipo mueble',
                'verbose_name_plural': 'Tipos de mueble',
            },
        ),
        migrations.AlterModelOptions(
            name='mueble',
            options={'verbose_name': 'Mueble', 'verbose_name_plural': 'Muebles'},
        ),
        migrations.RemoveField(
            model_name='mueble',
            name='predefinido',
        ),
    ]
