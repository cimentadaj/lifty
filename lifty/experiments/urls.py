from django.urls import path
from . import views

urlpatterns = [
    path('experiments/', views.experiment_list, name='experiment_list'),
]
