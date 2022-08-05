function onCreate()

	makeLuaSprite('parkingbg', 'BG/picod3/parkingbg', -150, -300);
	setScrollFactor('parkingbg', 1, 1);
	scaleLuaSprite('parkingbg', 1.14, 1.05);
	addLuaSprite('parkingbg', false);

makeAnimatedLuaSprite('LeftBoppers', 'BG/picod3/LeftBoppers', -30, 210);
addAnimationByPrefix('LeftBoppers', 'LeftBoppers', 'Boppers LEFT', 24, true);  
objectPlayAnimation('LeftBoppers', 'LeftBoppers', true)
scaleLuaSprite('LeftBoppers', 1, 1);
addLuaSprite('LeftBoppers', false);

makeAnimatedLuaSprite('RightBoppers', 'BG/picod3/RightBoppers', 1000, 150);
addAnimationByPrefix('RightBoppers', 'RightBoppers', 'Boppers RIGHT', 24, true);  
objectPlayAnimation('RightBoppers', 'RightBoppers', true)
scaleLuaSprite('RightBoppers', 1, 1);
addLuaSprite('RightBoppers', false);

makeAnimatedLuaSprite('scenes', 'BG/picod3/scenes', 0, 0);
addAnimationByPrefix('scenes', '5', 'DD1', 24, true);  
addAnimationByPrefix('scenes', '7', 'DD2', 24, true);  
addAnimationByPrefix('scenes', '8', 'DD3', 24, true);  
addAnimationByPrefix('scenes', '6', 'GF', 24, true);  
addAnimationByPrefix('scenes', '4', 'LemLila', 24, true);  
addAnimationByPrefix('scenes', '3', 'RuvSarv', 24, true);  
addAnimationByPrefix('scenes', '1', 'SkidNene', 24, true);  
addAnimationByPrefix('scenes', '2', 'TabiWhitty', 24, true);  
objectPlayAnimation('scenes', '1', true)
setObjectCamera('scenes', 'hud');
scaleLuaSprite('scenes', 2, 2);
addLuaSprite('scenes', false);
setProperty('scenes.alpha', 0);  
setProperty('defaultCamZoom', 0.9) 

makeLuaSprite('Sat', '', 0, 0)
makeGraphic('Sat', screenWidth, screenHeight,'646464')
setObjectCamera('Sat', 'other')
setProperty('Sat.alpha', 0)
addLuaSprite('Sat', true)
setBlendMode('Sat', 'SUBTRACT')

makeLuaSprite('frase1', 'BG/picod3/p1', 360, 600);
setLuaSpriteScrollFactor('frase1', 0, 0);
addLuaSprite('frase1', false);
setObjectCamera('frase1', 'other');
scaleLuaSprite('frase1', 1.25, 1.25);
setProperty('frase1.alpha', 0);

makeLuaSprite('frase2', 'BG/picod3/p3', 280, 570);
setLuaSpriteScrollFactor('frase2', 0, 0);
addLuaSprite('frase2', false);
setObjectCamera('frase2', 'other');
scaleLuaSprite('frase2', 1.25, 1.25);
setProperty('frase2.alpha', 0);

makeLuaSprite('frase3', 'BG/picod3/p2', 250, 550);
setLuaSpriteScrollFactor('frase3', 0, 0);
addLuaSprite('frase3', false);
setObjectCamera('frase3', 'other');
scaleLuaSprite('frase3', 1.4, 1.4);
setProperty('frase3.alpha', 0);

makeLuaSprite('corruptvignette3', 'BG/winter/corruptvignette4', 0, 0);
setLuaSpriteScrollFactor('corruptvignette3', 0, 0);
addLuaSprite('corruptvignette3', true);
setObjectCamera('corruptvignette3', 'other');
scaleLuaSprite('corruptvignette3', 2, 1.9);
setProperty('corruptvignette3.alpha', 0);

setProperty('frase1.visible', false);
setProperty('frase2.visible', false);
setProperty('frase3.visible', false);
end

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'rn' then
doTweenAlpha('corruptvignette3', 'corruptvignette3', 1, 3, 'linear')
recuerdosOn()
end 
if value1 == 'rf' then
recuerdosOff()
end 
if value1 == 'frase' then
doTweenAlpha('HB1', 'healthBarBG', 0, 1, 'linear')
doTweenAlpha('HB2', 'healthBar', 0, 1, 'linear')
doTweenAlpha('HB3', 'iconP1', 0, 1, 'linear')
doTweenAlpha('HB4', 'scoreTxt', 0, 1, 'linear')
doTweenAlpha('HB5', 'iconP2', 0, 1, 'linear')
frase()
end 
if value1 == 'frasedel' then
removeLuaSprite(value2)
end 
if value1 == 'mierda' then
doTweenColor('frase3', 'frase3', 'FF0F00', 0.01, 'linear');
end 
if value1 == 'triste' then
removeLuaSprite('scenes')
doTweenAlpha('corruptvignette3', 'corruptvignette3', 0, 3, 'linear')
doTweenAlpha('HB1', 'healthBarBG', 1, 1, 'linear')
doTweenAlpha('HB2', 'healthBar', 1, 1, 'linear')
doTweenAlpha('HB3', 'iconP1', 1, 1, 'linear')
doTweenAlpha('HB4', 'scoreTxt', 1, 1, 'linear')
doTweenAlpha('HB5', 'iconP2', 1, 1, 'linear')
end
if value1 == 'rip' then
doTweenAlpha('corruptvignette3', 'corruptvignette3', 1, 1, 'linear')
doTweenAlpha('Sat', 'Sat', 0.36, 1, 'linear')
cameraFlash('camGame', '000000', '5')
triggerEvent('CamaraFunctions', 'zoom', '1.5, 0.5');
end
end 
end

local AnimPlay = 1
local Texto1 = 1
local Texto2 = 0

function recuerdosOff()
doTweenAlpha('scenesOFF', 'scenes', 0, 0.5, 'linear')
runTimer('on', 0.9, 1);
runTimer('off', 2.55, 1);
end

function frase()
runTimer('tex', 0.01, 1);
runTimer('tex2', 0.02, 1);
runTimer('tex3', 0.03, 1);
end

function recuerdosOn()
AnimPlay = AnimPlay + 1
doTweenAlpha('scenes', 'scenes', 1, 0.5, 'linear')
end 

function onTweenCompleted(tag, loops, loopsLeft)
if tag == 'scenesOFF' then
objectPlayAnimation('scenes', AnimPlay, true)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'on' then
recuerdosOn()
end
if tag == 'off' then
recuerdosOff()
end
if tag == 'tex' then
removeLuaSprite('frase'..Texto2)
end
if tag == 'tex2' then
setProperty('frase'..Texto1..'.visible', true)
end
if tag == 'tex2' then
Texto1 = Texto1 + 1
Texto2 = Texto2 + 1
end
end

function onUpdate()
setProperty('frase1.alpha', getProperty('scenes.alpha'))
setProperty('frase2.alpha', getProperty('scenes.alpha'))
setProperty('frase3.alpha', getProperty('scenes.alpha'))
end