from django.contrib import admin
from django.urls import path

from api.views import healthcheck

urlpatterns = [
    path('admin/', admin.site.urls),
    path('healthcheck/', healthcheck, name="hc"),
]
