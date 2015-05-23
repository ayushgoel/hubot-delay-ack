# Hubot Delay Ack

Script for Hubot to ack a message with delay

#Features

* Ask hubot to ack you.
* You can ask it to ack you after a defined `<delay>` time.

#Installation

Install the npm package

    npm install hubot-delay-ack --save

and add `hubot-delay-ack` to `external-scripts.json`

    [ "hubot-delay-ack" ]

#Usage

    hubot delay-ack <delay> - Delay is in seconds

If delay is not provided, it is assumed to be 0 and ack is given instantaneously.

#LICENSE

`hubot-delay-ack` is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

# Author/Contact
Ayush Goel, ayushgoel111@gmail.com
