local AssetManager = {
    preload = {
        'assets/images/plane/plane_0_titi_son.png',
        'assets/images/plane/plane_1_titi_son.png',
        'assets/images/plane/plane_2_titi_son.png'
    }
}

local instance = nil

function AssetManager:new()
    if self.instance ~= nil then
        print('returning instance')
        return self.instance
    end

    self.instance = {}

    setmetatable(self.instance, self)
    self.__index = self

    return self.instance
end

function AssetManager:getInstance()
    return self.instance
end

function AssetManager:load()
    
end

function AssetManager:preLoad()
    
end

AssetManager:new()

return AssetManager