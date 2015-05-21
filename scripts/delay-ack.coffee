# Description:
#   Script for Hubot to ack a message with delay.
#
# Commands:
#   hubot delay-ack <delay> - Delay is in seconds
#


module.exports = (robot) ->
  robot.respond /delay-ack (\d*)/i, (msg) ->
    msg.send "Ack scheduled for #{msg.match[1]} seconds later"
    callback = -> msg.send "Here you go -> Ack scheduled #{msg.match[1]} seconds ago"
    delay = msg.match[1] * 1000
    setTimeout callback, delay
