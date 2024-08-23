from django.shortcuts import render, get_object_or_404

from songs.models import Song, Artist
from numpy import random
from datetime import date


def index(request, pk=None):
    song = None
    if pk:
        song = get_object_or_404(Song, pk=pk)

    data = get_music_home()
    return render(request, 'songs/index.html',
                  {'random_songs': data[0], 'songs': data[1], 'artists': data[2], 'song': song})


def get_music_home():
    random.seed(int(date.today().day + date.today().month))

    min_id = Song.objects.order_by('id').first().id
    max_id = Song.objects.order_by('id').last().id

    music_random_ids = random.randint(min_id, max_id, size=25)
    artist_ids = random.randint(26, 1300, size=30)

    today_songs = Song.objects.filter(id__in=music_random_ids).all()[:15]
    most_populars = Song.objects.order_by('-artist__followers').all()[:30]
    artists = Artist.objects.filter(id__in=artist_ids).all()[:30]

    return [today_songs, most_populars, artists]
