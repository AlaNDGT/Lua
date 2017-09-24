require("utils.math")

local Player = require("player")
local AssetManager = require("managers/assetManager")
local GameStateManager = require("managers/gameStateManager")

debug = true
local backgroundMusic = nil
local player = null

function love.load(arg)
    player = Player:new()
    backgroundMusic = love.audio.newSource("assets/sounds/ch-ay-na.ogg")
    backgroundMusic:setLooping(true)
    backgroundMusic:setVolume(0.2)
    backgroundMusic:play()
    player:load()
    AssetManager:load()
    GameStateManager:load()
end

function love.update(dt)
    player:update(dt)
end

function love.draw(dt)
    player:draw(dt)
end

function love.keypressed(key)
   if key == "escape" then
      love.event.push('quit')
   end
end