local StreamRouter = {}
StreamRouter.__index = StreamRouter

function StreamRouter.new(seed)
    return setmetatable({ state = seed or 7 }, StreamRouter)
end

function StreamRouter:collect_processor(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 7) % 997
    end
    return acc
end

local obj = StreamRouter.new()
print(obj:collect_processor(7))

return StreamRouter
