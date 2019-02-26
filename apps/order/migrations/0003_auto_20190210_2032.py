# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('order', '0002_auto_20171113_1813'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ordergoods',
            name='comment',
            field=models.CharField(max_length=256, default='', verbose_name='评论'),
        ),
        migrations.AlterField(
            model_name='orderinfo',
            name='trade_no',
            field=models.CharField(max_length=128, default='', verbose_name='支付编号'),
        ),
    ]
