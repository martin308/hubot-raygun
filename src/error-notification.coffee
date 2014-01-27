# Description:
#   Provides error notifications from Raygun
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
# Author:
#   martin308
module.exports = (robot) ->
  robot.router.post 'hubot/raygun-error-notification', (req, res) ->
    data = JSON.parse req.body

    robot.logger.info "Alert POSTed from Raygun: #{data}"

    res.writeHead 200
    res.end 'Thanks\n'
