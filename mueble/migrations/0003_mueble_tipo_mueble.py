# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('mueble', '0002_auto_20160526_1115'),
    ]

    operations = [
        migrations.AddField(
            model_name='mueble',
            name='tipo_mueble',
            field=models.ForeignKey(default=1, to='mueble.TipoMueble', on_delete=django.db.models.deletion.PROTECT),
            preserve_default=False,
        ),
    ]
