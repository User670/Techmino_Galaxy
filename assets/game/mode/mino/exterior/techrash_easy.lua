---@type Techmino.Mode
return {
    initialize=function()
        GAME.newPlayer(1,'mino')
        GAME.setMain(1)
        playBgm('way','base')
    end,
    settings={mino={
        seqType=mechLib.mino.techrashChallenge.easy_seqType,
        event={
            playerInit=mechLib.mino.techrashChallenge.easy_event_playerInit,
            afterLock=mechLib.mino.techrashChallenge.easy_event_afterLock,
            afterClear={
                mechLib.mino.techrashChallenge.easy_event_afterClear,
                mechLib.mino.progress.techrash_easy_afterClear,
            },
            drawInField=mechLib.mino.techrashChallenge.easy_event_drawInField,
            drawOnPlayer=mechLib.mino.techrashChallenge.easy_event_drawOnPlayer,
        },
    }},
}
