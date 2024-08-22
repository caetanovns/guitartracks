import os
import time

from songs.models import Song, Artist

with open('song_list', 'r') as file:
    for line in file:
        artist_name = line.strip().split("/")[0]
        title = line.strip().split("/")[1]
        file_path = 'media/songs/' + artist_name + "/" + title
        try:
            artist = Artist.objects.get(name__exact=artist_name.replace('-', ' '))
        except:
            artist = Artist(name=artist_name.replace('-', ' '))
            artist.save()
        song = Song(title=title.split(".mp3")[0].replace('-', ' '), file_path=file_path, artist_id=artist.id)
        song.save()
