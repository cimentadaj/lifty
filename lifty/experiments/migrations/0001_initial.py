# Generated by Django 4.2.6 on 2023-10-31 14:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    initial = True

    dependencies = [
        ("users", "0001_initial"),
    ]

    operations = [
        migrations.CreateModel(
            name="Experiment",
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
                ("name", models.CharField(max_length=255)),
                (
                    "status",
                    models.CharField(
                        choices=[
                            ("D", "Draft"),
                            ("R", "Running"),
                            ("RD", "Ready"),
                            ("W", "Wrap Up"),
                            ("C", "Concluded"),
                        ],
                        default="D",
                        max_length=2,
                    ),
                ),
                ("target_details", models.TextField()),
                ("primary_metric", models.CharField(max_length=255)),
                ("diagnostics", models.TextField()),
                ("start_date", models.DateField()),
                ("end_date", models.DateField()),
                (
                    "owner",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE, to="users.user"
                    ),
                ),
            ],
        ),
    ]