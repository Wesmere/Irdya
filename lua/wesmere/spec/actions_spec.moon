actions = require "actions"

describe "actions", ->

    describe "fire", ->

        message =
            speaker: "Kalenz"
            message: "Orcs are the best pals."

        it "the message action", ->

            actions.fire("message", message)
