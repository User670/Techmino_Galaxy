---@type Techmino.Mode
return {
    initialize=function()
        GAME.newPlayer(1,'mino')
        GAME.setMain(1)
        playBgm('race','base')
    end,
    settings={mino={
        fieldW=6,
        spawnH=12,
        event={
            afterClear={
                mechLib.mino.sprint.event_afterClear[80],
                mechLib.mino.progress.sprint_big_80_afterClear,
            },
            drawInField=mechLib.mino.sprint.event_drawInField[80],
            drawOnPlayer=mechLib.mino.sprint.event_drawOnPlayer[80],
            gameOver=mechLib.mino.progress.sprint_big_80_gameOver,
        },
    }},
}
