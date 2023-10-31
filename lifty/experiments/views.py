from django.shortcuts import render
from django.http import HttpResponse
from django.template import TemplateDoesNotExist
from .models import Experiment

# Function to display the list of experiments
def experiment_list(request):
    experiments = Experiment.objects.all()
    try:
        return render(request, 'experiments/experiment_list.html', {'experiments': experiments})
    except TemplateDoesNotExist:
        return HttpResponse("Template does not exist", status=500)
