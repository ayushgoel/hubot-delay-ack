# Description:
#   Script for Hubot to ack a message with delay.
#
# Commands:
#   hubot delay-ack <delay> - Delay is in seconds
#


module.exports = (robot) ->
  robot.respond /delay-ack\s*(\d*)/i, (msg) ->

    delay_ms_str = msg.match[1]
    delay_ms = if delay_ms_str then delay_ms_str else 0
    msg.send "Ack scheduled for #{delay_ms} seconds later"

    callback = -> msg.send "Here you go -> Ack scheduled #{delay_ms} seconds ago"
    delay = delay_ms * 1000
    setTimeout callback, delay
