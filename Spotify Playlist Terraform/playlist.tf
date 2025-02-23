resource "spotify_playlist" "Bollywood" {
    name = "Bollywood"
    tracks = ["1PALLCSlHwAI4upY3sMg8u","4ulroyDK6rN73nVkCkWhur"]
}

data "spotify_search_track" "Sonu_Nigam" {
    artist = "Sonu Nigam"
    limit = 10
}

resource "spotify_playlist" "Sonu_Nigam_Special" {
    name = "Sonu Nigam Special"
    tracks = flatten([for track in data.spotify_search_track.Sonu_Nigam.tracks : track.id])
}