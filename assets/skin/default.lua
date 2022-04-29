local gc=love.graphics
local gc_push,gc_pop=gc.push,gc.pop
local gc_translate,gc_scale,gc_rotate=gc.translate,gc.scale,gc.rotate
local gc_setColor,gc_setLineWidth=gc.setColor,gc.setLineWidth
local gc_line=gc.line
local gc_rectangle=gc.rectangle
local gc_printf=gc.printf

local max,min=math.max,math.min

local COLOR=COLOR

local S={
}
local _time
function S.setTime(t) _time=t end

local R=3
local function drawSide(B,x,y,bx,by)
    if not (B[y  ] and B[y  ][x+1]) then gc_rectangle('fill',bx+40  ,by   ,-R,40) end
    if not (B[y  ] and B[y  ][x-1]) then gc_rectangle('fill',bx     ,by   ,R ,40) end
    if not (B[y-1] and B[y-1][x  ]) then gc_rectangle('fill',bx     ,by+40,40,-R) end
    if not (B[y+1] and B[y+1][x  ]) then gc_rectangle('fill',bx     ,by   ,40, R) end
    if not (B[y-1] and B[y-1][x-1]) then gc_rectangle('fill',bx     ,by+40,R ,-R) end
    if not (B[y+1] and B[y+1][x-1]) then gc_rectangle('fill',bx     ,by   ,R , R) end
    if not (B[y-1] and B[y-1][x+1]) then gc_rectangle('fill',bx+40  ,by+40,-R,-R) end
    if not (B[y+1] and B[y+1][x+1]) then gc_rectangle('fill',bx+40  ,by   ,-R, R) end
end

function S.drawFieldGrid(fieldW,gridHeight)
    gc_setColor(1,1,1,.26)
    local rad,len=1,6-- Line width/length
    for x=1,fieldW do
        x=(x-1)*40
        for y=1,gridHeight do
            y=-y*40
            gc_rectangle('fill',x,    y,    len,  rad)
            gc_rectangle('fill',x,    y,    rad,  len)
            gc_rectangle('fill',x+40, y,    -len, rad)
            gc_rectangle('fill',x+40, y,    -rad, len)
            gc_rectangle('fill',x,    y+40, len,  -rad)
            gc_rectangle('fill',x,    y+40, rad,  -rad-len)
            gc_rectangle('fill',x+40, y+40, -len, -rad)
            gc_rectangle('fill',x+40, y+40, -rad, -rad-len)
        end
    end
end
function S.drawFieldBorder()
    gc_setLineWidth(2)
    gc_setColor(1,1,1)
    gc_line(-201,-401,-201, 401,201, 401,201,-401)
    gc_setColor(1,1,1,.626)
    gc_line(-201,-401,201,-401)
end

function S.drawFieldCells(F)
    F=F._matrix
    for y=1,#F do for x=1,#F[1] do
        local C=F[y][x]
        if C then
            local bx,by=(x-1)*40,-y*40
            local r,g,b=unpack(ColorTable[C.color])
            gc_setColor(r,g,b)
            gc_rectangle('fill',bx,by,40,40)

            gc_setColor(r*.5,g*.5,b*.5)
            -- Reuse local var g,b
            g=C.nearby
            if not g[F[y  ] and F[y  ][x+1]] then gc_rectangle('fill',bx+40-R,by   ,R ,40) end
            if not g[F[y  ] and F[y  ][x-1]] then gc_rectangle('fill',bx     ,by   ,R ,40) end
            if not g[F[y-1] and F[y-1][x  ]] then gc_rectangle('fill',bx     ,by+40,40,-R) end
            if not g[F[y+1] and F[y+1][x  ]] then gc_rectangle('fill',bx     ,by   ,40, R) end
            if not g[F[y-1] and F[y-1][x-1]] then gc_rectangle('fill',bx     ,by+40,R ,-R) end
            if not g[F[y+1] and F[y+1][x-1]] then gc_rectangle('fill',bx     ,by   ,R , R) end
            if not g[F[y-1] and F[y-1][x+1]] then gc_rectangle('fill',bx+40-R,by+40,R ,-R) end
            if not g[F[y+1] and F[y+1][x+1]] then gc_rectangle('fill',bx+40-R,by   ,R , R) end
        end
    end end
end

function S.drawFloatHold(n,B,handX,handY,unavailable)
    if unavailable then
        gc_setColor(.6,.6,.6,.25)
        for y=1,#B do for x=1,#B[1] do
            if B[y][x] then
                gc_rectangle('fill',(handX+x-2)*40,-(handY+y-1)*40,40,40)
            end
        end end
    else
        for y=1,#B do for x=1,#B[1] do
            if B[y][x] then
                local bx,by=(handX+x-2)*40,-(handY+y-1)*40
                local r,g,b=unpack(ColorTable[B[y][x].color])
                gc_setColor(r,g,b,_time%150/200)
                gc_rectangle('fill',bx,by,40,40)

                gc_setColor(r*.5,g*.5,b*.5,_time%150/200)
                drawSide(B,x,y,bx,by)
            end
        end end
    end
    FONT.set(50)
    gc_setColor(unavailable and COLOR.DL or COLOR.L)
    GC.mStr(n,(handX-1+#B[1]/2)*40,-(handY+#B/2)*40+5)
end

function S.drawHeightLines(fieldW,spawnH,lockoutH,deathH,voidH)
    gc_setColor(.0,.4,1.,.8) gc_rectangle('fill',0,-spawnH  -2 ,fieldW,4 )
    gc_setColor(1.,.5,.0,.6) gc_rectangle('fill',0,-lockoutH-2 ,fieldW,4 )
    gc_setColor(1.,.0,.0,.6) gc_rectangle('fill',0,-deathH  -2 ,fieldW,4 )
    gc_setColor(.0,.0,.0,.6) gc_rectangle('fill',0,-voidH   -40,fieldW,40)
end

function S.drawDelayIndicator(mode,value)
    gc_setLineWidth(2)
    gc_setColor(1,1,1)
    gc_rectangle('line',-201,401,402,12)

    if mode=='spawn' then
        gc_setColor(COLOR.lB)
    elseif mode=='death' then
        gc_setColor(COLOR.R)
    elseif mode=='drop' then
        gc_setColor(COLOR.lG)
    elseif mode=='lock' then
        gc_setColor(COLOR.L)
    end
    gc_rectangle('fill',-199,403,398*math.min(value,1),8)
end

function S.drawLockDelayIndicator(freshCondition,freshChance)
    if freshChance>0 then
        gc_setColor(
            freshCondition=='any' and COLOR.dL or
            freshCondition=='fall' and COLOR.R or
            freshCondition=='none' and COLOR.D or
            COLOR.random(4)
        )
        for i=1,min(freshChance,15) do gc_rectangle('fill',-218+26*i-1,420-1,20+2,5+2) end
        gc_setColor(COLOR.hsv(min((freshChance-1)/14,1)/2.6,.4,.9))
        for i=1,min(freshChance,15) do gc_rectangle('fill',-218+26*i,420,20,5) end
    end
end

function S.drawGhost(B,handX,ghostY)
    gc_setColor(1,1,1,.12)
    for y=1,#B do for x=1,#B[1] do
        if B[y][x] then
            gc_rectangle('fill',(handX+x-2)*40+R,-(ghostY+y-1)*40+R,40-R*2,40-R*2)
            gc_rectangle('fill',(handX+x-2)*40,-(ghostY+y-1)*40,40,40)
        end
    end end
end

function S.drawHand(B,handX,handY)
    for y=1,#B do for x=1,#B[1] do
        if B[y][x] then
            local bx,by=(handX+x-2)*40,-(handY+y-1)*40
            local r,g,b=unpack(ColorTable[B[y][x].color])
            gc_setColor(r,g,b)
            gc_rectangle('fill',bx,by,40,40)

            gc_setColor(r*.5,g*.5,b*.5)
            drawSide(B,x,y,bx,by)
        end
    end end
end

function S.drawNextBorder(slot)
    gc_setColor(COLOR.L)
    gc_setLineWidth(2)
    gc_rectangle('line',30,0,140,100*slot)
end

function S.drawNext(n,B,unavailable)
    gc.push('transform')
    gc_translate(100,100*n-50)
    gc_scale(min(2.3/#B,3/#B[1],.86))
    if unavailable then
        gc_setColor(.6,.6,.6)
        for y=1,#B do for x=1,#B[1] do
            if B[y][x] then
                gc_rectangle('fill',(x-#B[1]/2-1)*40,(y-#B/2)*-40,40,40)
            end
        end end
    else
        for y=1,#B do for x=1,#B[1] do
            if B[y][x] then
                local bx,by=(x-#B[1]/2-1)*40,(y-#B/2)*-40
                local r,g,b=unpack(ColorTable[B[y][x].color])
                gc_setColor(r,g,b)
                gc_rectangle('fill',bx,by,40,40)

                gc_setColor(r*.5,g*.5,b*.5)
                drawSide(B,x,y,bx,by)
            end
        end end
    end
    gc.pop()
end

function S.drawHoldBorder(mode,slot)
    gc_setLineWidth(2)
    if mode=='hold' then
        gc_setColor(COLOR.L)
        gc_rectangle('line',-170,0,140,100*slot)
    elseif mode=='swap' then
        gc_setColor(COLOR.L)
        gc_rectangle('line',430,0,140,100*slot)
    end
end

function S.drawHold(n,B,unavailable)
    gc.push('transform')
    gc_translate(-100,100*n-50)
    gc_scale(min(2.3/#B,3/#B[1],.86))
    for y=1,#B do for x=1,#B[1] do
        if B[y][x] then
            if unavailable then
                gc_setColor(.6,.6,.6)
            else
                gc_setColor(ColorTable[B[y][x].color])
            end
            gc_rectangle('fill',(x-#B[1]/2-1)*40,(y-#B/2)*-40,40,40)
        end
    end end
    gc.pop()
end

function S.drawTime(time)
    gc_setColor(COLOR.dL)
    FONT.set(30)
    gc_printf(("%.3f"):format(time/1000),-210-260,380,260,'right')
end

function S.drawStartingCounter(readyDelay)
    gc_push('transform')
    local num=math.floor((readyDelay-_time)/1000)+1
    local r,g,b
    local d=1-_time%1000/1000-- from .999 to 0

    if     num==1 then r,g,b=1.00,0.70,0.70 if d>.75 then gc_scale(1,1+(d/.25-3)^2) end
    elseif num==2 then r,g,b=0.98,0.85,0.75 if d>.75 then gc_scale(1+(d/.25-3)^2,1) end
    elseif num==3 then r,g,b=0.70,0.80,0.98 if d>.75 then gc_rotate((d-.75)^3*40) end
    elseif num==4 then r,g,b=0.95,0.93,0.50
    elseif num==5 then r,g,b=0.70,0.95,0.70
    else  r,g,b=max(1.26-num/10,0),max(1.26-num/10,0),max(1.26-num/10,0)
    end

    FONT.set(100)

    -- Warping number
    gc_push('transform')
        gc_scale((1.5-d*.6)^1.5)
        gc_setColor(r,g,b,d)
        GC.mStr(num,0,-70)
        gc_setColor(1,1,1,1.5*d-0.5)
        GC.mStr(num,0,-70)
    gc_pop()

    -- Scaling + Fading number
    gc_scale(min(d/.333,1)^.4)
    gc_setColor(r,g,b)
    GC.mStr(num,0,-70)
    gc_setColor(1,1,1,1.5*d-0.5)
    GC.mStr(num,0,-70)
    gc_pop()
end

return S
