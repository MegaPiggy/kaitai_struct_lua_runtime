local lua_version = tonumber(_VERSION:match("^Lua (.*)"))
if not lua_version or lua_version < 5.3 then
  -- older version of Lua or Luajit being used - use bit/bit32-based implementation
  return require("string_decode_bit32")
else
  -- From Lua 5.3, use implementation based on bitwise operators
  return require("string_decode_bwo")
end