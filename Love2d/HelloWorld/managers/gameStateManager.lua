local GameState = require("../constants/gameState")

local GameStateManager =  {}

local instance = nil

function GameStateManager:new()
    if self.instance ~= nil then
        return self.instance
    end

    self.instance =  {}

    setmetatable(self.instance, self)
    self.__index = self

    return self.instance
end

function GameStateManager:load()
    
end

GameStateManager:new()

return GameStateManager