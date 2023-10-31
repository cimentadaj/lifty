from django.contrib import admin
from django.urls import include, path
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('users/', include('users.urls')),
    path('experiments/', include('experiments.urls')),
    path('', include('experiments.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
