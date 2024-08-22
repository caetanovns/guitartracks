from django.shortcuts import render, get_object_or_404

from songs.models import Song, Artist
from numpy import random


# Create your views here.
def index(request):
    random.seed(6)
    min_id = Song.objects.order_by('id').first().id
    max_id = Song.objects.order_by('id').last().id
    music_random_ids = random.randint(min_id, max_id, size=25)
    random_songs = Song.objects.filter(id__in=music_random_ids).all()[:25]
    most_populars = Song.objects.order_by('-artist__followers').all()[:30]
    artists = Artist.objects.order_by('-popularity').all()[:30]

    return render(request, 'songs/index.html',
                  {'random_songs': random_songs, 'songs': most_populars, 'artists': artists})


def show(request, pk):
    random.seed(6)
    min_id = Song.objects.order_by('id').first().id
    max_id = Song.objects.order_by('id').last().id
    music_random_ids = random.randint(min_id, max_id, size=25)
    random_songs = Song.objects.filter(id__in=music_random_ids).all()[:25]
    most_populars = Song.objects.order_by('-artist__followers').all()[:30]
    artists = Artist.objects.order_by('-popularity').all()[:30]

    song = get_object_or_404(Song, pk=pk)
    return render(request, 'songs/view.html',
                  {'random_songs': random_songs, 'songs': most_populars, 'artists': artists, 'song': song})
