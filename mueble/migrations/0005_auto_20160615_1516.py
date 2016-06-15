# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('mueble', '0004_auto_20160526_1405'),
    ]

    operations = [
        migrations.CreateModel(
            name='EspecificaionMueble',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, verbose_name='ID', serialize=False)),
                ('especificacion', models.CharField(max_length=100)),
                ('ancho', models.DecimalField(max_digits=7, decimal_places=2)),
                ('largo', models.DecimalField(max_digits=7, decimal_places=2)),
                ('alto', models.DecimalField(max_digits=7, decimal_places=2)),
                ('punto', models.IntegerField()),
            ],
            options={
                'verbose_name': 'Especificación del mueble',
                'verbose_name_plural': 'Especificaciones del mueble',
            },
        ),
        migrations.RemoveField(
            model_name='mueble',
            name='alto',
        ),
        migrations.RemoveField(
            model_name='mueble',
            name='ancho',
        ),
        migrations.RemoveField(
            model_name='mueble',
            name='especificacion',
        ),
        migrations.RemoveField(
            model_name='mueble',
            name='largo',
        ),
        migrations.RemoveField(
            model_name='mueble',
            name='punto',
        ),
        migrations.AddField(
            model_name='especificaionmueble',
            name='mueble',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='mueble.Mueble'),
        ),
    ]
