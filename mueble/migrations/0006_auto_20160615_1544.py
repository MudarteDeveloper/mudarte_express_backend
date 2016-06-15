# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('mueble', '0005_auto_20160615_1516'),
    ]

    operations = [
        migrations.CreateModel(
            name='EspecificacionMueble',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('especificacion', models.CharField(max_length=100)),
                ('ancho', models.DecimalField(decimal_places=2, max_digits=7)),
                ('largo', models.DecimalField(decimal_places=2, max_digits=7)),
                ('alto', models.DecimalField(decimal_places=2, max_digits=7)),
                ('punto', models.IntegerField()),
                ('mueble', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='mueble.Mueble')),
            ],
            options={
                'verbose_name': 'Especificación del mueble',
                'verbose_name_plural': 'Especificaciones del mueble',
            },
        ),
        migrations.RemoveField(
            model_name='especificaionmueble',
            name='mueble',
        ),
        migrations.DeleteModel(
            name='EspecificaionMueble',
        ),
    ]
