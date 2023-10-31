from django.db import models
from users.models import User

class Experiment(models.Model):
    STATUS_CHOICES = [
        ('D', 'Draft'),
        ('R', 'Running'),
        ('RD', 'Ready'),
        ('W', 'Wrap Up'),
        ('C', 'Concluded'),
    ]

    name = models.CharField(max_length=255)
    status = models.CharField(max_length=2, choices=STATUS_CHOICES, default='D')
    target_details = models.TextField()
    primary_metric = models.CharField(max_length=255)
    owner = models.ForeignKey('users.User', on_delete=models.CASCADE)
    diagnostics = models.TextField()
    start_date = models.DateField()
    end_date = models.DateField()
