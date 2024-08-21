from django.contrib import admin

from songs.models import Song


# Register your models here.
class SongAdmin(admin.ModelAdmin):
    list_display = ['artist', 'title']


admin.site.register(Song, SongAdmin)
