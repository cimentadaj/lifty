from django.shortcuts import render
from django.http import HttpResponse
from django.template import TemplateDoesNotExist
from .models import User

# Function to display the list of users
def user_list(request):
    users = User.objects.all()
    try:
        return render(request, 'users/user_list.html', {'users': users})
    except TemplateDoesNotExist:
        return HttpResponse("Template does not exist", status=500)
