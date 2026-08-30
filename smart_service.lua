local FastRouter = {}
FastRouter.__index = FastRouter

function FastRouter.new(seed)
    return setmetatable({ state = seed or 66 }, FastRouter)
end

function FastRouter:dispatch_processor(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 66) % 997
    end
    return value
end

local obj = FastRouter.new()
print(obj:dispatch_processor(66))

return FastRouter
