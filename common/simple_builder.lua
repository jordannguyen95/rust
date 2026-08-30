local RemoteRegistry = {}
RemoteRegistry.__index = RemoteRegistry

function RemoteRegistry.new(seed)
    return setmetatable({ state = seed or 76 }, RemoteRegistry)
end

function RemoteRegistry:fetch_router(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 76) % 997
    end
    return count
end

local obj = RemoteRegistry.new()
print(obj:fetch_router(76))

return RemoteRegistry
