local Player = require("player")
local AssetManager = require("managers/assetManager")
local GameStateManager = require("managers/gameStateManager")

debug = true
backgroundMusic = nil
player = Player:new()

function love.load(arg)
    backgroundMusic = love.audio.newSource("assets/sounds/ch-ay-na.ogg")
    backgroundMusic:setLooping(true)
    backgroundMusic:setVolume(0.2)
    backgroundMusic:play()
    player:load()
    AssetManager:load()
    GameStateManager:load()
end

function love.update(dt)
	if love.keyboard.isDown('escape')then
		love.event.push('quit')
	end

    player:update(dt)
end

function love.draw(dt)
    player:draw(dt)
end