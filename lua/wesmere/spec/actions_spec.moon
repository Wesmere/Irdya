actions = require "actions"

describe "actions", ->

    describe "fire", ->

        message =
            speaker: "Kalenz"
            message: "Orcs are the best pals."

        pending "the message action", ->

            actions.fire("message", message)
