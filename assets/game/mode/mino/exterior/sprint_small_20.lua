---@type Techmino.Mode
return {
    initialize=function()
        GAME.newPlayer(1,'mino')
        GAME.setMain(1)
        playBgm('race','base')
    end,
    settings={mino={
        fieldW=15,
        spawnH=30,
        event={
            afterClear={
                mechLib.mino.sprint.event_afterClear[20],
                mechLib.mino.progress.sprint_small_20_afterClear,
            },
            drawInField=mechLib.mino.sprint.event_drawInField[20],
            drawOnPlayer=mechLib.mino.sprint.event_drawOnPlayer[20],
            gameOver=mechLib.mino.progress.sprint_small_20_gameOver,
        },
    }},
}
