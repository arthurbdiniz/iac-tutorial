resource "spotify_playlist" "playlist" {
  name        = "IaC Playlist"
  description = "My playlist created with IaC"
  public      = false

  tracks = flatten([
    data.spotify_track.one_dance.id,
    data.spotify_search_track.the_killers.tracks[0].id
  ])
}

data "spotify_track" "one_dance" {
  url = "https://open.spotify.com/track/1zi7xx7UVEFkmKfv06H8x0"
}

data "spotify_search_track" "the_killers" {
  name   = "Somebody Told Me"
  artist = "The Killers"
  album  = "Hot Fuss"
}

output "show_track" {
  value = data.spotify_search_track.the_killers.tracks
}