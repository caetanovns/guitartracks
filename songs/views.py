from django.shortcuts import render, get_object_or_404

from songs.models import Song


# Create your views here.
def index(request):
    songs = Song.objects.all()[:10]
    return render(request, 'songs/index.html', {'songs': songs})


def show(request, pk):
    song = get_object_or_404(Song, pk=pk)
    return render(request, 'songs/view.html', {'song': song})
