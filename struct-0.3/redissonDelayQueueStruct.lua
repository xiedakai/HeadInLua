#!/usr/bin/env lua
local struct = require"struct"

print(struct.size("i"))

local s = ""
local value = struct.pack('Bc2', 1, 'abc')
print(value)


print("abcd len= "..string.len('abcd'))


local  s = struct.pack('dLc0', 1099.88, 4, 'abcd')

print("type = ".. type(s))
print("string.len = ".. string.len(s))
print(s)

print("unpack...")
local randomId, value = struct.unpack('dLc0', s)
print("randomId =" ..randomId)
print("value =" .. value)
