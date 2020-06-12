export const createPlaylistRequest = (playlist) => {
  return $.ajax({
    url: `/api/playlists`,
    method: 'POST',
    data: {playlist}
  })
}

export const fetchPlaylist = (id) => {
  // debugger
  return $.ajax({
    url: `/api/playlists/${id}`,
    method: 'GET'
  })
}

export const fetchPlaylists = () => {
  // debugger
  return $.ajax({
    url: `/api/playlists/`,
    method: 'GET'
  })
}

// export const fetchPlaylistSongs = (id) => {
//   // debugger
//   return $.ajax({
//     url: `/api/playlists/${id}/songs/`,
//     method: 'GET'
//   })
// }
