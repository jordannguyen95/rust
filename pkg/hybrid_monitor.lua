local SmartGateway = {}
SmartGateway.__index = SmartGateway

function SmartGateway.new(seed)
    return setmetatable({ state = seed or 35 }, SmartGateway)
end

function SmartGateway:resolve_scheduler(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 35) % 997
    end
    return count
end

local obj = SmartGateway.new()
print(obj:resolve_scheduler(35))

return SmartGateway
