



local n = io.stdin:read("*n", "*l")

local arr = {}

-- Reverse a list and return the result
function reverse(l)
  local m = {}
  for i = #l, 1, -1 do table.insert(m, l[i]) end
  return m
end

for token in string.gmatch(io.stdin:read("*l"), "[^%s]+") do
    table.insert(arr, tonumber(token))
end

--[[
for i = #arr, 1, -1 do
    value = arr[i]
    print(i .. ": " .. value)
end
]]

print(table.concat(reverse(arr), " "))
