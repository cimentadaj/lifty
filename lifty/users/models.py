from django.db import models
from django.contrib.auth.models import AbstractUser, Group, Permission

# Check if the User model is defined correctly
class User(AbstractUser):
    avatar = models.ImageField(upload_to='avatars/', null=True, blank=True)
    groups = models.ManyToManyField(Group, blank=True, related_name="custom_user_set", verbose_name="groups")
    user_permissions = models.ManyToManyField(Permission, blank=True, related_name="custom_user_set", verbose_name="user permissions")
