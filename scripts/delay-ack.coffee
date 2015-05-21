# Description:
#   Script for Hubot to ack a message with delay.
#
# Commands:
#   hubot delay-ack <delay> - Delay is in seconds
#


module.exports = (robot) ->
  robot.respond /delay-ack (\d*)/i, (msg) ->
    callback = -> msg.send "Ack scheduled #{msg.match[1]} seconds before"
    delay = msg.match[1] * 1000
    setTimeout callback, delay
