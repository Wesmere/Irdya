require "moonscript"
Location = require "Location"

-- source: moonscript_spec.moon
describe "Location class tests", ->

  describe "Equality test test", ->

    it "Is Equal", ->

      loc1 = Location(5, 12)
      loc2 = Location(5, 12)

      assert(loc1 == loc2)

    it "Not Equal", ->

      loc1 = Location(12, 4)
      loc2 = Location(12, 3)

      assert(loc1 != loc2)

  describe "Constructor tests", ->

    it "Location(5, 10)", ->
      loc = Location(5, 10)
      assert.are.equal 5, loc.x
      assert.are.equal 10, loc.y

    it "Location(Location(5, 10))", ->
      loc = Location(Location(5, 10))
      assert.are.equal 5, loc.x
      assert.are.equal 10, loc.y

    it "Location({ x: 5, y: 10})", ->
      loc = Location({ x: 5, y: 10})
      assert.are.equal 5, loc.x
      assert.are.equal 10, loc.y

  describe "adjacents! tests", ->

    loc1 = Location(5,5)
    it "direction test NORTH", ->
      passed = loc1\adjacents!.NORTH
      expected = Location(5,4)
      assert.are.equal expected, passed

    it "direction test SOUTH", ->
      passed = loc1\adjacents!.SOUTH
      expected = Location(5,6)
      assert.are.equal expected, passed

    it "direction test SOUTH_WEST", ->
      passed = loc1\adjacents!.SOUTH_WEST
      expected = Location(4,5)
      assert.are.equal expected, passed

    it "direction test SOUTH_EAST", ->
      passed = loc1\adjacents!.SOUTH_EAST
      expected = Location(6,5)
      assert.are.equal expected, passed

    it "direction test NORTH_WEST", ->
      passed = loc1\adjacents!.NORTH_WEST
      expected = Location(4,4)
      assert.are.equal expected, passed

    it "direction test NORTH_EAST", ->
      passed = loc1\adjacents!.NORTH_EAST
      expected = Location(6,4)
      assert.are.equal expected, passed

    loc2 = Location(9,10)
    it "direction test2 NORTH", ->
      north = loc2\adjacents!.NORTH
      another_north = Location(9,9)
      assert.are.equal another_north, north

    it "direction test2 SOUTH", ->
      passed = loc2\adjacents!.SOUTH
      expected = Location(9,11)
      assert.are.equal expected, passed

    it "direction test2 SOUTH_WEST", ->
      passed = loc2\adjacents!.SOUTH_WEST
      expected = Location(8,10)
      assert.are.equal expected, passed

    it "direction test2 SOUTH_EAST", ->
      passed = loc2\adjacents!.SOUTH_EAST
      expected = Location(10,10)
      assert.are.equal expected, passed

    it "direction test2 NORTH_WEST", ->
      passed = loc2\adjacents!.NORTH_WEST
      expected = Location(8,9)
      assert.are.equal expected, passed

    it "direction test2 NORTH_EAST", ->
      passed = loc2\adjacents!.NORTH_EAST
      expected = Location(10,9)
      assert.are.equal expected, passed
