{parse} = require "../source/motoko"
generate = require "../source/generate"

{readFileSync} = require "fs"

describe "generate", ->
  it "should generate Motoko code from source", ->
    ast = parse(readFileSync("./test/examples/Alarm.mo", "utf8"))
    assert ast
