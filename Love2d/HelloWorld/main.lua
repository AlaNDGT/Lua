local Player = require("player")

debug = true
player = Player:new()

function love.load(arg)
    player:load()
end

function love.update(dt)
    player:update(dt)
end

function love.draw(dt)
    player:draw(dt)
end