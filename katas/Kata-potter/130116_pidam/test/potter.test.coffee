expect = require "expect.js"
cost   = require "../src/potter"

describe "Mon calculateur de prix", ->
  it "works1", ->
    expect(cost([])).to.equal(0)
  it "works2", ->
    expect(cost([0])).to.equal(8)
  it "works3", ->
    expect(cost([0, 1])).to.equal(8 * 0.95 * 2)
  it "works4", ->
    expect(cost([0, 0])).to.equal(8 * 2)
  it "works5", ->
    expect(cost([1, 1, 1, 1])).to.equal(8 * 4)
  it "works6", ->
    expect(cost([0, 1, 2, 3, 4])).to.equal(8 * 5 * 0.75)
  it "works7", ->
    expect(cost([0, 0, 1, 1, 2, 3, 4, 4])).to.equal(8 * (5 * 0.75 + 3 * 0.90))
