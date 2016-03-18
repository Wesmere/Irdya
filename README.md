# Irdya
```
             __ __ 
           /       \
    __ __ /         \ __ __
  /       \         /       \
 /         \ __ __ /         \ 
 \         /       \         /
  \ __ __ /         \ __ __ /
  /       \         /       \
 /         \ __ __ /         \
 \         /       \         /
  \ __ __ /         \ __ __ /
          \         /
           \ __ __ /
```
Irdya is a Wesmere (TODO: link to Wesmere) Package aiming to play the Battle for [Wesnoth](http://wesnoth.org).

It is written in [MoonScript](http://moonscript.org) a language derived from [Lua](http://lua.org).

Game Mechanics are mostly coded using the addon api and are meant to be easy to customize.

The game content (and thus the add-ons) can be written either in Lua or Moonscript.
Every content shipped with Irdya are MoonScripts.

Neither the needed host application nor the display client to run a game are finished yet.

Although Irdya ships with the ported unit test scenario suite of the original Wesnoth project.


## State of the Project

### Irdya 
The design and coding of the framework is mostly finished.
The focus of the current work is to implement the gameplay which should be done when all the pending unit tests pass.

[![Build Status](https://travis-ci.org/Wesmere/Irdya.svg?branch=master)](https://travis-ci.org/Wesmere/Irdya)

#### Usage

Irdya is meant to be embedded by a host which is able to handle Wesmere Packages.
There is currently no host available and even if there was you also need a Display Server for playing.
Thus no fun yet.

Implementing a host shouldn't be that difficult, it is mostly a network server that passes messages to Irdya and sends away the responses.

The Wesmere Protocols and the exact Package format is not finished yet.
It will be made public as soon as possible.

Although Irdya ships with a unit test scenario suit.
Running it means to start a bunch of test scenarios covering a subset of the gameplay.

#### Contribute

You can already help and contribute to the development of Irdya.
Have a look at the test suite [README](https://github.com/Wesmere/Irdya/blob/master/lua/wesmere/README.md).

When you got the test suite running, pick a still failing test, implement or fix it and do a git merge request.
Thank you very much! :-)

The development of Irdya is currently discussed in the Wesnoth forums:
[Wesnoth Forum Thread](https://forums.wesnoth.org/viewtopic.php?f=13&t=43298)

## Shipped Content

### Unit Test Scenario Suite

### Wesnoth Units

### Wesnoth Terrain

### Wesnoth Campaign 'An Orcish Incursion'

