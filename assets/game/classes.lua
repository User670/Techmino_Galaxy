---@alias Techmino.Player.Type 'mino'|'puyo'|'gem'
---@alias Techmino.Mode.Setting Techmino.Mode.Setting.Mino|Techmino.Mode.Setting.Puyo|Techmino.Mode.Setting.Gem
---@alias Techmino.EndReason
---|'AC'  Win
---|'WA'  Block out
---|'CE'  Lock out
---|'MLE' Top out
---|'TLE' Time out
---|'OLE' Finesse fault
---|'ILE' Ran out pieces
---|'PE'  Mission failed
---|'UKE' Other reason

---@alias Techmino.mode.event.basic
---|'always'
---|'playerInit'
---|'gameStart'
---|'beforePress'
---|'afterPress'
---|'beforeRelease'
---|'afterRelease'
---|'gameOver'

---@alias Techmino.mode.event.mino
---|'afterResetPos'
---|'afterSpawn'
---|'afterDrop'
---|'afterLock'
---|'afterClear'
---|'beforeCancel'
---|'beforeSend'
---|'beforeDiscard'
---|'whenSuffocate'
---|'extraSolidCheck'
---|'changeSpawnPos'
---
---|'drawBelowField'
---|'drawBelowBlock'
---|'drawBelowMarks'
---|'drawInField'
---|'drawOnPlayer'

---@alias Techmino.mode.event.puyo
---|'afterSpawn'
---|'afterResetPos'
---|'afterDrop'
---|'afterLock'
---|'afterClear'
---|'whenSuffocate'
---|
---|'drawBelowField'
---|'drawBelowBlock'
---|'drawBelowMarks'
---|'drawInField'
---|'drawOnPlayer'

---@alias Techmino.mode.event.gem
---|'illegalMove'
---|'legalMove'
---
---|'drawBelowField'
---|'drawInField'
---|'drawOnPlayer'

---@alias Techmino.Mech.basic table<string, table|fun(P:Techmino.Player|any):any>
---@alias Techmino.Mech.mino table<string, table|fun(P:Techmino.Player.mino|any):any,any>
---@alias Techmino.Mech.puyo table<string, table|fun(P:Techmino.Player.puyo|any):any,any>
---@alias Techmino.Mech.gem table<string, table|fun(P:Techmino.Player.gem|any):any,any>

---@class Techmino.ParticleSystems
---@field rectShade love.ParticleSystem
---@field spinArrow table
---@field star love.ParticleSystem
---@field boardSmoke love.ParticleSystem
---@field line love.ParticleSystem
---@field hitSparkle love.ParticleSystem
---@field cornerCheck love.ParticleSystem
---@field tiltRect love.ParticleSystem
---@field trail love.ParticleSystem
---@field minoMapBack love.ParticleSystem

---@alias Techmino.Mino.Shape table<number,table<number,boolean>>
---@alias Techmino.Mino.Name 'Z'|'S'|'J'|'L'|'T'|'O'|'I'|'Z5'|'S5'|'P'|'Q'|'F'|'E'|'T5'|'U'|'V'|'W'|'X'|'J5'|'L5'|'R'|'Y'|'N'|'H'|'I5'|'I3'|'C'|'I2'|'O1'|string
---@alias Techmino.Mino.ID 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|integer

---@class Techmino.Mino
---@field name Techmino.Mino.Name
---@field id Techmino.Mino.ID
---@field shape Techmino.Mino.Shape

---@class Techmino.Cell
---@field cid string cell's mem pointer string
---@field id number ascending piece number
---@field color number 0~63
---@field alpha? number 0~1
---@field conn table<string, true>
---@field bias {expBack?:number, lineBack?:number, teleBack?:number, x:number, y:number}
---@field visTimer? number
---@field visStep? number
---@field visMax? number

---@class Techmino.RectField
---@field _width number
---@field _matrix (Techmino.Cell|false)[][]

---@class Techmino.Mode
---@field initialize function Called when initializing the mode
---@field settings {mino:Techmino.Mode.Setting.Mino?, puyo:Techmino.Mode.Setting.Puyo?, gem:Techmino.Mode.Setting.Gem?}
---@field layout 'default' Layout mode
---@field checkFinish function Return if the game should end when a player finishes
---@field result function Called when the game ends
---@field resultPage fun(time:number) Drawing the result page
---@field name string Mode name, for debug use

---@class Techmino.Mode.Setting.Mino
---@field event table<Techmino.mode.event.basic|Techmino.mode.event.mino, string|table|function|table<number, string|table|function>>

---@class Techmino.Mode.Setting.Puyo
---@field event table<Techmino.mode.event.basic|Techmino.mode.event.puyo, string|table|function|table<number, string|table|function>>

---@class Techmino.Mode.Setting.Gem
---@field event table<Techmino.mode.event.basic|Techmino.mode.event.gem, string|table|function|table<number, string|table|function>>

---@class Techmino.mino.clearRule
---@field getDelay fun(P:Techmino.Player.mino, lines:number[]): number?
---@field isFill fun(P:Techmino.Player.mino, y:number): boolean
---@field getFill fun(P:Techmino.Player.mino): number[]?
---@field clear fun(P:Techmino.Player.mino, lines:number[])

---@class Techmino.Game
---@field playing boolean
---@field playerList table<number, Techmino.Player>|false
---@field playerMap table<number, Techmino.Player>|false
---@field camera Zenitha.Camera
---@field hitWaves table
---@field seed number|false
---@field mode Techmino.Mode|false
---@field mainID number|false
---@field mainPlayer Techmino.Player|false

---@class Techmino.Player
---@field gameMode Techmino.Player.Type
---@field id number limited to 1~1000
---@field group number
---@field isMain boolean
---@field sound boolean
---@field settings Techmino.Mode.Setting
---@field buffedKey table
---@field modeData table
---@field soundTimeHistory table
---@field RND love.RandomGenerator
---@field pos {x:number, y:number, k:number, a:number, dx:number, dy:number, dk:number, da:number, vx:number, vy:number, vk:number, va:number}
---@field finished Techmino.EndReason|boolean
---@field realTime number
---@field time number
---@field gameTime number
---@field timing boolean
---@field texts Zenitha.Text
---@field particles Techmino.ParticleSystems
---
---@field updateFrame function
---@field scriptCmd function
---@field decodeScript function
---@field checkScriptSyntax function
---
---@field hand table|false Piece object
---@field handX number
---@field handY number
---@field event table
---@field soundEvent table
---@field _actions table<string, {press:fun(P:Techmino.Player), release:fun(P:Techmino.Player)}>
---
---@field receive function
---@field render function
