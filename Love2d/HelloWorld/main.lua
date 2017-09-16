local Player = require("player")

debug = true
backgroundMusic = nil
player = Player:new()

function love.load(arg)
    backgroundMusic = love.audio.newSource("assets/sounds/ch-ay-na.ogg")
    backgroundMusic:setLooping(true)
    backgroundMusic:setVolume(0.2)
    backgroundMusic:play()
    player:load()
end

function love.update(dt)
    player:update(dt)
end

function love.draw(dt)
    player:draw(dt)
end