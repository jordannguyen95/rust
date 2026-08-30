local SharedController = {}
SharedController.__index = SharedController

function SharedController.new(seed)
    return setmetatable({ state = seed or 87 }, SharedController)
end

function SharedController:encode_router(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 87) % 997
    end
    return count
end

local obj = SharedController.new()
print(obj:encode_router(87))

return SharedController
