--Made by spectradev on discord | Read -> please add a subtle black outline around your healthbar center pieces. the colors can overlap and cause it to look ugly
local BarData = {
    {'Booyah', --song name | {'songName'} | (MUST BE EXACT)
    {0,15}, --p1 icon offsets | {x,y}
    {0,15}, --p2 icon offsets | {x,y}
    {0,-25}, --health bar downscroll offsets | {x,y}
    {0,10}, --health bar upscroll offsets | {x,y}
    {0,-2}, --inner bar offsets | {x,y}
    {24,24,24}, --framerate | {healthbarBG, playerSide, opponentSide} | (if the bar is flipped then player side will be opponents and vice versa)
    false --if its flipped or not | true / false
    }
}
local timeFunny = 10 --10 is reccomend

--unless you know what your doing or youve modified the base healthbar, I dont reccomend changing anything past this
function onCreate() --change values inside of here if youve changed the base healthbar
    iconX1 = 0
    iconY1 = 0
    iconX2 = 0
    iconY2 = 0
    downscrollX = 0
    downscrollY = 150
    upscrollX = 3000
    upscrollY = 50
    innerBarX = 0
    innerBarY = 0
    fps = {24,24,24}
    flipped = false
    setSettings()
end
--you shouldnt have to change anything below here, fuck off, dipshit




function onCreate()

makeLuaSprite('counter', 'ui/counter', 965, 565);

setObjectCamera('counter', 'other');
scaleObject('counter', 0.8 , 0.8);
	addLuaSprite('counter', false);
	
makeLuaSprite('healthbarUnder', 'ui/full healthbar', 1150, 50)
    setObjectCamera('healthbarUnder', 'camOther')
addLuaSprite('healthbarUnder', true)
        makeLuaSprite('healthbarOver', 'ui/empty healthbar', 1150, 50)
    setObjectCamera('healthbarOver', 'camOther')
addLuaSprite('healthbarOver', true) 
    screenCenter("healthbarSP", 'x')
    setProperty("healthbarUnder.x", getProperty("healthbarSP.x")+getMid('healthbarSP.width')-getMid('healthbarUnder.width')+innerBarX)
    setProperty("healthbarUnder.y", getProperty("healthbarSP.y")+getMid('healthbarSP.height')-getMid('healthbarUnder.height')+innerBarY)
    setProperty("healthbarOver.x", getProperty("healthbarSP.x")+getMid('healthbarSP.width')-getMid('healthbarOver.width')+innerBarX)
    setProperty("healthbarOver.y", getProperty("healthbarSP.y")+getMid('healthbarSP.height')-getMid('healthbarOver.height')+innerBarY)
    setProperty("healthBar.visible", false)
    setProperty("healthBarBG.visible", false)
    setProperty("healthbarSP.visible", false)
        
end

local lefton = true
local grande = true

function onCreatePost()

    
    
    
    

makeLuaText('Score', '0', 200, 15, 560)
			setTextAlignment('Score', 'Left')
			addLuaText('Score', true)
		setObjectOrder('Score', getObjectOrder('counter')+ 1)
	
			makeLuaText('chinga', '100%', 200, 15, 560)
			setTextAlignment('chinga', 'Left')
			addLuaText('chinga', true)
			setObjectOrder('chinga', getObjectOrder('Score')+ 1)
			setTextFont('chinga','freeplay.otf')
			setTextFont('Score','freeplay.otf')
			
			makeLuaText('scoreTxtt', '0', 200, 15, 560)
			setTextAlignment('scoreTxtt', 'Left')
			addLuaText('scoreTxtt', true)
			setObjectCamera('scoreTxtt', 'other');
			setObjectCamera('Score', 'other');
			setObjectCamera('chinga', 'other');
			setObjectOrder('scoreTxtt', getObjectOrder('chinga')+ 1)
setProperty('iconP2.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('timeBarBG.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeTxt.visible', false)
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)

setTextAlignment('scoreTxt', 'left')



			setTextFont('scoreTxtt','freeplay.otf')
setTextSize('scoreTxtt', 40)
setTextSize('Score', 20)
setTextSize('chinga', 20)


setProperty('scoreTxtt.x', 1010)
setProperty('scoreTxtt.y', 670)
setProperty('chinga.x', 1180)
setProperty('chinga.y', 585)

setProperty('Score.x', 1080)
setProperty('Score.y', 585)

if downscroll then

        
setProperty('scoreTxtt.y', 30)
setProperty('Score.y', 120)
setProperty('healthbarOver.y', 180)
setProperty('healthbarUnder.y', 180)

setProperty('counter.y', 0)
setProperty('counter.flipY',true)
setProperty('chinga.y', 120)
end

if lefton then

setProperty('healthbarOver.x', 50)

setProperty('healthbarUnder.x', 50)
end
if grande and lefton then
setProperty('healthbarOver.x', 10)
setProperty('healthbarUnder.x', 10)

setProperty('healthbarOver.y', 60)
setProperty('healthbarUnder.y', 60)
scaleObject('healthbarOver', 1.2 , 1.3);
scaleObject('healthbarUnder', 1.2 , 1.3);
end
end

local cameras = {'camHUD'}

misterioso = "2"
local  ninja = "sans.otf"

function onUpdatePost()
  function lerp(a, b, t)
        return a + (b - a) * t
    end
    ignorancia = healthBarBG
    WHAT = getProperty('healthbarUnder.height')
    machete = healthbarwaza
    DINOSAURIO = songName 
    esconfusoverdad = esquividitoiletsigmanomaigagflooxxxtendancion
    currentHeight = getProperty('healthbarOver._frame.frame.height')
    targetHeight = getHealth()
     < 2 and
      ((1 - (getHealth() 
      / 2)) * WHAT 
      - 60) 
      or 0.0001
    smoothHeight = lerp(currentHeight, targetHeight, 0.1) 
    setProperty('healthbarOver._frame.frame.height', smoothHeight)

	for _,camera in ipairs(cameras) do
		setProperty(camera .. ".flashSprite.scaleX", 0.93)
		setProperty(camera .. ".flashSprite.scaleY", 0.95)


		local scale = getProperty(camera .. ".zoom") / 1
		callMethod(camera .. ".setScale", {scale, scale})
    end

end


function onUpdateScore()
local ratFC = getProperty('ratingFC')
local ratPercent = getProperty('ratingPercent')
if ratFC ~= '' and ratFC ~= 'Clear' then
local rat = getProperty('ratingName')
if ratFC == 'SFC' then
ratFC = 'MFC'
elseif ratFC == 'GFC' then
ratFC = 'SDG'
end
if ratPercent == 1 then
rat = 'SSSS'
elseif ratPercent >= 0.95 and ratPercent < 1 then
rat = 'SSS'
elseif ratPercent >= 0.9 and ratPercent < 0.95 then
rat = 'SS'
elseif ratPercent >= 0.85 and ratPercent < 0.9 then
rat = 'A'
elseif ratPercent >= 0.8 and ratPercent < 0.85 then
rat = 'B+'
end
rat = ' - '..rat
ratFC = ' | '..ratFC..rat
else
ratFC = ''
end
setTextString('scoreTxtt',getProperty('songScore'))
setTextString('chinga',(math.floor(ratPercent*10000)/100)..'%')
setTextString('Score',getProperty('songMisses'))
end
function onEndSong()
setPropertyFromClass('ClientPrefs', 'comboStacking', seninayar1)
setPropertyFromClass('ClientPrefs', 'scoreZoom', seninayar2)
end
function onGameOver()
setPropertyFromClass('ClientPrefs', 'comboStacking', seninayar1)
setPropertyFromClass('ClientPrefs', 'scoreZoom', seninayar2)
end


function onEvent(name, value1, value2)
    local var string = (value1)
    local var color = (value2)
    if name == "Second Lyric Line" then

        makeLuaText('segundo lyric', 'Lyrics go here', 1000, 150, 610)
        setTextString('segundo lyric',  '' .. string)
        
        setTextColor('segundo lyric', color)
        setTextSize('segundo lyric', 30);
        setTextFont('segundo lyric','lyrics.otf')
        addLuaText('segundo lyric')
	setObjectCamera('segundo lyric', 'other');
        setTextAlignment('segundo lyric', 'center')
        if value2 == 'gf' then
        setTextColor('segundo lyric', 'FE6661')
    end
    if value2 == 'dad' then
        setTextColor('segundo lyric', 'AF66CE')
    end
         if value2 == 'bf' then
        setTextColor('segundo lyric', '17FFAA')
    end
        --removeLuaText('segundo lyric', true)
        if value2 == 'pico' then
        setTextColor('segundo lyric', '44FF00')
    end
            if value2 == 'skid' then
        setTextColor('segundo lyric', 'EDEDED')
end
        if value2 == 'pump' then
        setTextColor('segundo lyric', 'FF9C00')
end
end

if name == "Clear Lyrics" then

       
        if value1 == 'bf' then
        setTextString('segundo lyric',  ' ')
        setTextString('captions',  ' ')
    end
    if value2 == 'bf' then
        setTextString('segundo lyric',  ' ')
        setTextString('captions',  ' ')
    end
    
            if value1 == 'dad' then
        setTextString('segundo lyric',  ' ')
        setTextString('captions',  ' ')
    end
            if value1 == 'skid' then
        setTextString('segundo lyric',  ' ')
        setTextString('captions',  ' ')
    end
    if value1 == 'pump' then
        setTextString('segundo lyric',  ' ')
        setTextString('captions',  ' ')
    end
    if value1 == 'pico' then
        setTextString('segundo lyric',  ' ')
        setTextString('captions',  ' ')
    end
    if value2 == 'gf' then
        setTextString('captions',  ' ')
        setTextString('segundo lyric',  ' ')
end
end
    local var string = (value1)
    local var color = (value2)
    if name == "Lyrics" then

        makeLuaText('captions', 'Lyrics go here', 1000, 150, 550)
        setTextString('captions',  '' .. string)
        setTextFont('captions', 'vcr.ttf')
        setTextColor('captions', color)
        setTextSize('captions', 30);
        setTextFont('captions','lyrics.otf')
        addLuaText('captions')
	setObjectCamera('captions', 'other');
        setTextAlignment('captions', 'center')
        if value2 == 'gf' then
        setTextColor('captions', 'FE6661')
    end
    if value2 == 'dad' then
        setTextColor('captions', 'AF66CE')
    end
         if value2 == 'bf' then
        setTextColor('captions', '17FFAA')
    end
        --removeLuaText('captions', true)
        if value2 == 'pico' then
        setTextColor('captions', '44FF00')
    end
            if value2 == 'skid' then
        setTextColor('captions', 'EDEDED')
end
        if value2 == 'pump' then
        setTextColor('captions', 'FF9C00')
end
end
if name == 'Flash Camera 2' then

	   makeLuaSprite('OMG', '', 0, 0);
        makeGraphic('OMG',1280,720,'ffffff')
	      addLuaSprite('OMG', true);
	      setLuaSpriteScrollFactor('OMG',0,0)
	      setProperty('OMG.scale.x',2)
	      setProperty('OMG.scale.y',2)
	setObjectCamera('OMG', 'other');
	      setProperty('OMG.alpha',0)
		setProperty('OMG.alpha',1)
		doTweenAlpha('WOSAS','OMG',0,1,'linear')
	end
if name == 'Flash Camera' then

	   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'ffffff')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	setObjectCamera('flash', 'other');
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('curioso','flash',0,1,'linear')
	end

if name == "Set Camera Zoom" then
        
        if value2 == '' then
      	  setProperty("defaultCamZoom",value1)
	else
            doTweenZoom('GULOD','camGame',tonumber(value1),tonumber(value2),'sineInOut')
	end
            
    end

if name == "Zoom Camera" then
        
        if value1 == '' then
      	  setProperty("defaultCamZoom",value2)
	else
            doTweenZoom('cakkkWWKSKAKWmz','camGame',tonumber(value2),tonumber(value1),'sineInOut')
	end
            
    end


end

function onTweenCompleted(name)

if name == 'camz' then


      	 setProperty("defaultCamZoom",getProperty('camGame.zoom')) 

end


end