local function foo(a)
  if a == nil then return nil end
  return a + 1
end

local b = foo(nil)
print(b)  -- Output: nil

local c = foo(10)
print(c)  -- Output: 11

local d = foo(0)
print(d) -- Output: 1

local function foo2(...)
  local args = {...}
  if #args == 0 then return nil end
  return args[1] + 1
end

local e = foo2()
print(e) -- Output: nil
local f = foo2(10)
print(f) -- Output: 11

--or

local function foo3(a)
  a = a or 0  --sets a to 0 if nil
  return a + 1
end

local g = foo3(nil)
print(g)  -- Output: 1
local h = foo3(10)
print(h) --Output: 11