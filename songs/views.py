from django.shortcuts import render, get_object_or_404

from songs.models import Song, Artist


# Create your views here.
def index(request):
    random_songs = Song.objects.order_by('?').all()[:5]
    most_populars = Song.objects.order_by('-artist__followers').all()[:30]
    artists = Artist.objects.order_by('-popularity').all()[:30]

    return render(request, 'songs/index.html',
                  {'random_songs': random_songs, 'songs': most_populars, 'artists': artists})


def show(request, pk):
    song = get_object_or_404(Song, pk=pk)
    return render(request, 'songs/view.html', {'song': song})
