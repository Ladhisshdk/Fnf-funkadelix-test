function onCreate()
makeLuaSprite('otro', '')
makeGraphic('otro', 1, 1, '000000')
setObjectCamera('otro', 'HUD')
setProperty('otro.alpha',0)
addLuaSprite('otro', false)
scaleLuaSprite('otro', 1280, 720
end
function onEvent(name,value1,value2)
if name == 'BLACKOUT' then
if value1 == '1' then
doTweenAlpha('hola',1,value2,'linear')
end
if value1 == '2' then
doTweenAlpha('bay',0,value2,'linear')
end
end