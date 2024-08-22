from django.db import models


# Create your models here.
class Artist(models.Model):
    name = models.CharField(max_length=255)
    gender = models.CharField(max_length=255, null=True, blank=True)
    image_path = models.CharField(max_length=1024, null=True, blank=True)
    popularity = models.CharField(max_length=255, null=True, blank=True)
    gender_list = models.CharField(max_length=1024, null=True, blank=True)
    followers = models.CharField(max_length=1024, null=True, blank=True)


class Song(models.Model):
    title = models.CharField(max_length=255)
    gender = models.CharField(max_length=255, null=True, blank=True)
    file_path = models.CharField(max_length=1024)
    artist = models.ForeignKey(Artist, on_delete=models.CASCADE, null=True, blank=True)



