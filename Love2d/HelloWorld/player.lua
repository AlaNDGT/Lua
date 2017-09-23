local AssetManager require("managers/assetManager")
local Player =  {
    images =  {}, 
    planeSound = nil, 
    x = 0, 
    y = 0, 
    animation = 'normal'
}

moveSpeed = 140
pitch = 1
pitchUpdateSpeed = 0.05

function Player:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function Player:load()
    self:loadImages()
    self:loadSounds()
end

function Player:loadImages()
    self.images =  {}
    self.images["normal"] = love.graphics.newImage('assets/images/plane/plane_0_titi_son.png')
    self.images["tilt-right"] = love.graphics.newImage('assets/images/plane/plane_1_titi_son.png')
    self.images["tilt-left"] = love.graphics.newImage('assets/images/plane/plane_2_titi_son.png')
end

function Player:loadSounds()
    self.planeSound = love.audio.newSource("assets/sounds/plane.ogg", "static")
    self.planeSound:setLooping(true)
    self.planeSound:play()
end

function Player:update(dt)
    self.animation = 'normal'

    if love.keyboard.isDown("left")then
        self.animation = 'tilt-left'
        self.x = self.x - (moveSpeed * dt)
        newPitch = pitch + pitchUpdateSpeed
    elseif love.keyboard.isDown("right")then
        self.animation = 'tilt-right'
        self.x = self.x + (moveSpeed * dt)
        newPitch = pitch + pitchUpdateSpeed
    else
        newPitch = pitch - pitchUpdateSpeed; 
    end

    if love.keyboard.isDown("up")then
        self.y = self.y - (moveSpeed * dt)
    end

    if love.keyboard.isDown("down")then
        self.y = self.y + (moveSpeed * dt)
    end
    
    pitch = love.math.clamp(1, newPitch, 1.5)

    self.planeSound:setPitch(pitch)
end

function Player:draw(dt)
    love.graphics.draw(self.images[self.animation], self.x, self.y)
end


return Player