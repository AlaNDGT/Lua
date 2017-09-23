local conf = {}
conf.args = args

--Configuration
function love.conf(config)
    config.console = true
    
    config.title = "Hello World"--The title of the window the game is in (string)
    config.version = "0.10.2"--The LÖVE version this game was made for (string)
    config.window.width = 480--we want our game to be long and thin.
    config.window.height = 600
    config.borderless = true
    config.masterVolume = 1

    conf.config = config
end

return conf