resource "spotify_playlist" "playlist" {
  name        = "My playlist"
  description = "My playlist is so awesome"
  public      = false

  tracks = [
    data.spotify_track.one_dance.id
  ]
}

data "spotify_track" "one_dance" {
  url = "https://open.spotify.com/track/1zi7xx7UVEFkmKfv06H8x0"
}