require "moonscript"
location_set = require "location_set"

describe "location_set class tests", ->

  some_set = location_set.create!

  describe "empty", ->
    it "Is Empty", ->
      assert(some_set\empty!)

  some_set\insert(17, 42)

  describe "insert", ->
    it "can find freshly inserted location", ->
      assert(some_set\get(17, 42))

  describe "size", ->
    it "size is one", ->
      assert(some_set\size! == 1)

  describe "clear", ->
    it "can't find removed location'", ->
      some_set\clear!
      assert(not some_set\get(17, 42))

  describe "get", ->
    it "can fetch attached string", ->
      some_set\insert(17, 42, "something")
      assert(some_set\get(17, 42) == "something")

  a_set = location_set!
  b_set = location_set!

  describe "union", ->
    it "overwrite associated data", ->
      a_set\insert(17, 42, "nothing")
      b_set\insert(17, 42, "something")
      a_set\union(b_set)
      assert(a_set\get(17, 42) == "something")

  describe "inter", ->
    it "assosiated data is kept intact if not removed", ->
      a_set\insert(17, 42, "nothing")
      b_set\insert(17, 42, "something")
      a_set\inter(b_set)
      assert(a_set\get(17, 42) == "nothing")
