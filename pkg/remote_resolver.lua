local CoreLoader = {}
CoreLoader.__index = CoreLoader

function CoreLoader.new(seed)
    return setmetatable({ state = seed or 31 }, CoreLoader)
end

function CoreLoader:resolve_service(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 31) % 997
    end
    return result
end

local obj = CoreLoader.new()
print(obj:resolve_service(31))

return CoreLoader
