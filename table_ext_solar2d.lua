-- Written by Rabia Alhaffar in 11/March/2021
-- Polyfill for some table functions from Solar2D
-- Updated: 27/March/2021

-- table.indexOf
if not table.indexOf then
  table.indexOf = function(arr, elem)
    for i = 1, #arr do
      if arr[i] == elem then
        return i
      end
    end
  end
end

-- table.copy
if not table.copy then
  table.copy = function(...)
    local arg = { ... }
    local result = {}
    if #arg == 1 then
      return arg[1]
    else
      for i = 1, #arg do
        for j = 1, #arg[i] do
          table.insert(result, arg[i][j])
        end
      end
    end
    return result
  end
end
