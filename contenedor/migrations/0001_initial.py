# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Contenedor',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', primary_key=True, auto_created=True)),
                ('contenedor', models.CharField(unique=True, max_length=100)),
                ('propuesto1', models.IntegerField()),
                ('propuesto2', models.IntegerField()),
                ('propuesto3', models.IntegerField()),
                ('propuesto4', models.IntegerField()),
            ],
            options={
                'verbose_name_plural': 'Contenedores',
                'verbose_name': 'Contenedor',
                'ordering': ['contenedor'],
            },
        ),
        migrations.CreateModel(
            name='DetalleContenedor',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', primary_key=True, auto_created=True)),
                ('siglas', models.CharField(max_length=10)),
                ('cantidad', models.IntegerField()),
                ('punto', models.IntegerField()),
                ('contenedor', models.ForeignKey(to='contenedor.Contenedor')),
            ],
            options={
                'verbose_name': 'Detalle contenedor',
                'verbose_name_plural': 'Detalle contenedores',
            },
        ),
    ]
