local Player = {
    images = {},
    x = 0,
    y = 0,
    animation = 'normal'
}

moveSpeed = 150

function Player:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function Player:load()
    self:loadImages()
end

function Player:loadImages()
    self.images = {}
    self.images["normal"] = love.graphics.newImage('assets/plane/plane_0_titi_son.png')
    self.images["tilt-right"] = love.graphics.newImage('assets/plane/plane_1_titi_son.png')
    self.images["tilt-left"] = love.graphics.newImage('assets/plane/plane_2_titi_son.png')
end

function Player:update(dt)
    self.animation = 'normal'
    
    if love.keyboard.isDown("left") then
        self.animation = 'tilt-left'
        self.x = self.x - (moveSpeed * dt)
    end

    if love.keyboard.isDown("right") then
        self.animation = 'tilt-right'
        self.x = self.x + (moveSpeed * dt)
    end

    if love.keyboard.isDown("up") then
        self.y = self.y - (moveSpeed * dt)
    end

    if love.keyboard.isDown("down") then
        self.y = self.y + (moveSpeed * dt)
    end
end

function Player:draw(dt)
    love.graphics.draw(self.images[self.animation], self.x, self.y)
end


return Player