from django.db import models


# Create your models here.
class Song(models.Model):
    artist = models.CharField(max_length=255)
    title = models.CharField(max_length=255)
    gender = models.CharField(max_length=255, null=True, blank=True)
    file_path = models.CharField(max_length=1024)
