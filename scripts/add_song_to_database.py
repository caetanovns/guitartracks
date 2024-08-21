import os
from songs.models import Song

with open('song_list', 'r') as file:
    for line in file:
        artist = line.strip().split("/")[0]
        title = line.strip().split("/")[1]
        file_path = 'media/songs/' + artist + "/" + title
        song = Song(artist=artist, title=title.split(".mp3")[0], file_path=file_path)
        song.save()
        print(title)
