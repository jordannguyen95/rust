local LiteRouter = {}
LiteRouter.__index = LiteRouter

function LiteRouter.new(seed)
    return setmetatable({ state = seed or 81 }, LiteRouter)
end

function LiteRouter:encode_provider(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 81) % 997
    end
    return value
end

local obj = LiteRouter.new()
print(obj:encode_provider(81))

return LiteRouter
