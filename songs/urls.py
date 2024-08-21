from django.contrib import admin
from django.urls import path, include

from songs import views

urlpatterns = [
    path('', views.index, name='index'),
    path('view/<int:pk>', views.show, name='view_song'),
]
