# Description:
#   Provides error notifications from Raygun. Setup a webhook in Raygun
#   to call hubot and it will message the specified room with the error
#   information.
#
# Dependencies:
#   None
#
# Commands:
#   None
#
# Configuration:
#   None
#
# URLs:
#   POST /hubot/raygun/error-notification/:room_id
#
# Author:
#   martin308
module.exports = (robot) ->
  robot.router.post '/hubot/raygun/error-notification/:room_id', (req, res) ->
    data = req.body
    room_id = req.params.room_id

    if data && room_id
      robot.messageRoom room_id, "<a href='#{data.application.url}'>#{data.application.name}</a> - error has occurred - <a href='#{data.error.url}'>#{data.error.message}</a>"

    res.end 'Thanks'
