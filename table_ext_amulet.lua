-- Written by Rabia Alhaffar in 11/March/2021
-- Polyfill for some table functions from Amulet
-- Updated: 27/March/2021

-- table.search
if not table.search then
  table.search = function(arr, elem)
    for i = 1, #arr do
      if arr[i] == elem then
        return i
      end
    end
  end
end

-- table.clear
if not table.clear then
  table.clear = function(t)
    for k, v in pairs(t) do
      if t[k] then
        t[k] = nil
      end
    end
  end
end

-- table.remove_all
if not table.remove_all then
  table.remove_all = function(arr, elem)
    for i = 1, #arr do
      if arr[i] == elem then
        arr[i] = nil
      end
    end
  end
end

-- table.append
if not table.append then
  table.append = function(t1, t2)
    for i = 1, #t2 do
      table.insert(t1, t2[i])
    end
  end
end

-- table.merge
if not table.merge then
  table.merge = function(t1, t2)
    for k, v in pairs(t2) do
      t1[k] = t2[k]
    end
  end
end

-- table.keys
if not table.keys then
  table.keys = function(t)
    local result = {}
    for k in pairs(t) do
      table.insert(result, k)
    end
  end
  return result
end

-- table.values
if not table.values then
  table.values = function(t)
    local result = {}
    for k, v in pairs(t) do
      table.insert(result, v)
    end
  end
  return result
end

-- table.count
if not table.count then
  table.count = function(t)
    local result = 0
    for k, v in pairs(t) do
      if t[k] then
        result = result + 1
      end
    end
    return result
  end
end

-- table.filter
if not table.filter then
  table.filter = function(t, f)
    local result = {}
    for i = 1, #t do
      local a = t[i]
      local b = t[i + 1] or t[i]
      if (f(a, b) == true) then
        t[i] = a
        t[i + 1] = b
      else
        t[i] = b
        t[i + 1] = a
      end
    end
    return result
  end
end

-- table.tostring
if not table.tostring then
  table.tostring = function(t)
    local result = "{"
    for k, v in pairs(t) do
      if assert(type(tonumber(k)) == "number") then
        result = result .. v .. ","
      else
        result = result .. "\"" .. k .. "\"" .. " = " .. v .. ","
      end
    end
    result = result .. "}"
    return result
  end
end

-- table.shuffle
if not table.shuffle then
  table.shuffle = function(t, r)
    math.randomseed(os.time())
    for i = #t, 2, -1 do
      local j = r or math.random(i)
      t[i], t[j] = t[j], t[i]
    end
    return t
  end
end
