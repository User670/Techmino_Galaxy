local settings={
    _system={ -- We just save values here, do not change them directly.
        -- Audio
        autoMute=false,
        mainVol=1,
        bgmVol=.8,
        sfxVol=1,
        vocVol=0,
        vibVol=1,

        -- Video
        hitWavePower=.6,
        fullscreen=true,
        portrait=false,
        maxFPS=300,
        updRate=100,
        drawRate=30,
        msaa=4,

        -- Gameplay
        touchControl=false,

        -- Other
        powerInfo=true,
        sysCursor=false,
        showTouch=true,
        clean=false,
        locale='en',
    },
    game_mino={
        -- Handling
        asd=120,
        asp=20,
        adp=20,
        asHalt=26,
        hdLockA=200,
        hdLockM=62,

        -- Video
        shakeness=.6,
    },
    game_puyo={
        -- Handling
        asd=120,
        asp=20,
        adp=20,
        asHalt=26,
        hdLockA=200,
        hdLockM=62,

        -- Video
        shakeness=.6,
    },
    game_gem={
        -- Handling
        asd=150,
        asp=40,

        -- Video
        shakeness=.6,
    },
}
local settingTriggers={ -- Changing values in SETTINGS.system will trigger these functions (if exist).
    -- Audio
    mainVol=        function(v) love.audio.setVolume(v) end,
    bgmVol=         function(v) BGM.setVol(v) end,
    sfxVol=         function(v) SFX.setVol(v) end,
    vocVol=         function(v) VOC.setVol(v) end,

    -- Video
    fullscreen=     function(v) love.window.setFullscreen(v); love.resize(love.graphics.getWidth(),love.graphics.getHeight()) end,
    maxFPS=         function(v) Zenitha.setMaxFPS(v) end,
    updRate=        function(v) Zenitha.setUpdateFreq(v) end,
    drawRate=       function(v) Zenitha.setDrawFreq(v) end,
    sysCursor=      function(v) love.mouse.setVisible(v) end,
    clean=          function(v) Zenitha.setCleanCanvas(v) end,

    -- Other
    locale=         function(v) Text=LANG.set(v) end,
}
settings.system=setmetatable({},{
    __index=settings._system,
    __newindex=function(_,k,v)
        if settings._system[k]~=v then
            settings._system[k]=v
            if settingTriggers[k] then
                settingTriggers[k](v)
            end
        end
    end,
    __metatable=true,
})
return settings
