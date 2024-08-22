import time

import requests, json

from songs.models import Artist

artists = Artist.objects.filter(image_path__isnull=True).distinct('name')

for artist in artists:
    api_key = 'BQA6OMHHYP3g9y1mNIDQDEuXnmAxb56o2V92YSXn9gz_6-3yaFgx5FXuIL4dQsVia8YZXXznJKpofTJlkmF2-SBskFy_BI4BOeuDNvFnioOFnWtFHcav5OV98xcPKsT6t7b8TFiYcQheWHHpKj7bGSgFFhB8qZxyi8flqtdYZKPGpOcygKBtznkOAkcA1zOfawfTfT1T2imvGjogP7WBE0osMdkJCnjFyPJrKZRF7ozgb6XPR2YwWLO0edjGAf8_FMuLPBG5HtZzDlC2N1LH6ssbfXRp0WU6t8qQUAJbKbqAoVTgyf3KlInPfFabHpAreuXDj2Ah-1tQOZUGXnwMQwtqyYioW3c'

    url = f"https://api.spotify.com/v1/search?q={artist.name}&type=artist&limit=1"

    headers = {
        "Authorization": f"Bearer {api_key}"
    }
    # print(artist.name)
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        try:
            data = json.loads(response.text)
            genders = data['artists']['items'][0]['genres']
            artist.followers = data['artists']['items'][0]['followers']['total']
            artist.gender_list = ''.join(str(e + "/") for e in genders)
            artist.popularity = data['artists']['items'][0]['popularity']
            artist.image_path = data['artists']['items'][0]['images'][0]['url']
            artist.save()
            print("SUCCESS " + artist.name)
        except:
            print("Exception " + artist.name)

    else:
        print("ERROR RESPONSE " + artist.name)
