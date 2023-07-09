# Generated by Django 4.2.1 on 2023-07-08 23:26

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name="DatoUsuario",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "imagen",
                    models.ImageField(
                        blank=True,
                        default="defecto/defecto.png",
                        null=True,
                        upload_to="producto/%Y/%m/%d",
                    ),
                ),
                ("nombre", models.CharField(max_length=50)),
                ("apellido", models.CharField(max_length=50)),
                ("fecha_nacimiento", models.DateField(blank=True, null=True)),
                ("pais", models.CharField(blank=True, max_length=30)),
                ("provincia", models.CharField(blank=True, max_length=40)),
                ("ciudad", models.CharField(blank=True, max_length=40)),
                ("domicilio", models.CharField(blank=True, max_length=80)),
                ("codigo_postal", models.CharField(blank=True, max_length=50)),
                ("telefono", models.CharField(blank=True, max_length=30)),
                ("celular", models.CharField(blank=True, max_length=30)),
                ("documento", models.CharField(blank=True, max_length=30)),
                ("cuit", models.CharField(blank=True, max_length=30)),
                (
                    "usuario",
                    models.ForeignKey(
                        blank=True,
                        null=True,
                        on_delete=django.db.models.deletion.CASCADE,
                        to=settings.AUTH_USER_MODEL,
                    ),
                ),
            ],
        ),
    ]